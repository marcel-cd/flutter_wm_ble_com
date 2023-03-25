/* *
 * Wirepas BLE communication example
 *
 * Made in the swiss alps, 2023 <marcel.graber@steinel.ch>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:flutter_wm_ble_com/main.dart';
import 'package:flutter_wm_ble_com/providers/com_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:statemachine/statemachine.dart';
import 'package:wakelock/wakelock.dart';
import 'package:flutter_wm_ble_com/models/command.dart';
import 'package:flutter_wm_ble_com/models/message.dart';
import 'package:flutter_wm_ble_com/models/wirepas_device.dart';
import 'package:flutter_wm_ble_com/repositories/com_repository.dart';
import 'package:flutter_wm_ble_com/extenstions/first_where_or_null.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ble_peripheral/flutter_ble_peripheral.dart';
import 'package:synchronized/synchronized.dart';

final COMPANY_ID = 0x09EF; // Steinel Solutions Manufacturer ID

enum ComBleState {
  disconnected,
  disconnect,
  connect,
  connected,
}

class ComBleRepository implements ComRepository {
  Ref? _ref;
  StreamSubscription? _subscription;
  final _ble = FlutterReactiveBle();
  final _machine = Machine<ComBleState>();
  final MessageHandler _messageHandler;
  Uint8List _lastRxData = Uint8List(0);
  List<WirepasDevice> _wmDevices = [];
  final _wmDeviceStream = const Stream<List<WirepasDevice>>.empty();
  final _wmDeviceStreamController =
      StreamController<List<WirepasDevice>>.broadcast();

  factory ComBleRepository(Ref ref) {
    return ComBleRepository._(ref, MessageHandler(ref));
  }

  ComBleRepository._(this._ref, this._messageHandler) {
    _wmDeviceStreamController.addStream(_wmDeviceStream);

    _machine.newState(ComBleState.disconnected);
    _machine.newState(ComBleState.connected)
      ..onEntry(() {})
      ..onExit(() {});
    _machine.newState(ComBleState.connect)
      ..onEntry(() {
        _scanStart();
        _advertiseStart();
      })
      ..onExit(() {
        _scanStop();
        _advertiseStop();
      });
    _machine.newState(ComBleState.disconnect)
      ..onEntry(() {})
      ..onExit(() {});
    _machine.current = ComBleState.disconnected;
    _machine.start();
  }

  @override
  Stream<List<WirepasDevice>> wirepasDevices() {
    return _wmDeviceStreamController.stream;
  }

  @override
  Future<void> start() {
    _machine.current = ComBleState.connect;
    // reset progress
    _ref!.read(uploadProgressProvider.notifier).state = 0;
    return Future.value();
  }

  @override
  Future<void> stop() {
    _machine.current = ComBleState.disconnect;
    return Future.value();
  }

  var _uploadFirmwareStatus = 0;
  final int _firmwarePackageSize = Platform.isIOS ? 12 : 20;
  @override
  Future<void> uploadFirmware() async {
    _uploadFirmwareStatus = 0;
    ByteData bytes = await rootBundle.load(appFirmwarePath);

    _messageHandler.addMessage(CommandPayload.otapBeginUploadRequest(
      scratchpadSequence: appFirmwareVersion,
      scratchpadLength: bytes.lengthInBytes,
      packageLength: _firmwarePackageSize,
    ));

    // keep screen on
    Wakelock.enable();

    return Future.value();
  }

  void _updateUpload(int value) {
    if (value == 100) {
      _ref!.read(appActivityProvider.notifier).state =
          AppActivityState.uploadingSuccess;
      Wakelock.disable();
    }
    if (_ref != null && value > 0) {
      _ref!.read(uploadProgressProvider.notifier).state = value;
    }
  }

  Future<void> _writeFirmware(int startMessageId) async {
    // give feedback to the user
    _ref!.read(appActivityProvider.notifier).state = AppActivityState.uploading;
    var i = 0;
    ByteData bytes = await rootBundle.load(appFirmwarePath);
    Uint8List firmware =
        bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);

    var len = firmware.length;

    for (i = 0; i < (len / _firmwarePackageSize).ceil(); i++) {
      var data = firmware.sublist(
          i * _firmwarePackageSize,
          ((i + 1) * _firmwarePackageSize < firmware.length)
              ? (i + 1) * _firmwarePackageSize
              : len);
      // its important, that the last package will be received by the device
      _messageHandler.addMessage(
        CommandPayload.otapUploadRequest(data: data),
        timeoutMs: (i >= (len / _firmwarePackageSize).ceil()) ? 4000 : 150,
        messageId: i + startMessageId,
      );
    }
  }

  Future<void> _advertiseStart() async {
    // give feedback to the user
    _ref!.read(appActivityProvider.notifier).state = AppActivityState.scanning;
    _messageHandler.addMessage(
        const CommandPayload.scanRequest(appVersion: 1, hardwareOS: 1),
        timeoutMs: 30 * 1000);
  }

  Future<void> _advertiseStop() async {
    _messageHandler.stopAdvertising();
  }

  Future<void> _scanStop() async {
    await _subscription?.cancel();
    _subscription = null;
  }

  Future<void> _scanStart() async {
    await _subscription?.cancel();
    _subscription = _ble.scanForDevices(
        withServices: [],
        withCompanyIds: [COMPANY_ID],
        scanMode: ScanMode.lowLatency,
        requireLocationServicesEnabled: false).listen((scanDevice) {
      if (scanDevice.manufacturerData.isNotEmpty) {
        // check if we already have this device
        if (_lastRxData.length == scanDevice.manufacturerData.length &&
            _lastRxData.every((element) =>
                scanDevice.manufacturerData[_lastRxData.indexOf(element)] ==
                element)) {
          return;
          // continue;
        }
        _lastRxData = scanDevice.manufacturerData;
        Command.fromManufacturerData(scanDevice.manufacturerData).when(
          (messageId, command, payload, requestId) {
            if (_messageHandler.containsMessage(requestId)) {
              _messageHandler.setMessageReceived(requestId);
            }
            payload.maybeMap(
              resendMessageRequest: (message) {
                _messageHandler.resendMessage(message.messageId);
              },
              scanResponse: (message) {
                // update or create device in _wmDevices
                var index = _wmDevices
                    .indexWhere((element) => element.id == scanDevice.id);
                if (index >= 0) {
                  _wmDevices[index] = _wmDevices[index].copyWith(
                      token: message.token,
                      firmwareVersionMajor: message.firmwareVersionMajor,
                      firmwareVersionMinor: message.firmwareVersionMinor,
                      isSink: message.isSink == 1,
                      rssi: scanDevice.rssi);
                } else {
                  _wmDevices.add(WirepasDevice(
                      id: scanDevice.id,
                      token: message.token,
                      firmwareVersionMajor: message.firmwareVersionMajor,
                      firmwareVersionMinor: message.firmwareVersionMinor,
                      isSink: message.isSink == 1,
                      rssi: scanDevice.rssi));
                }
              },
              otapBeginUploadResponse: (message) {
                _updateUpload(1);
                _writeFirmware(message.startMessageId);
              },
              otapUploadResponse: (otapWriteResponse) {
                _updateUpload(otapWriteResponse.percentageComplete);
              },
              error: (error) => debugPrint('error: ${error.message}'),
              orElse: () => debugPrint('unparsed payload'),
            );
          },
          error: (error) => debugPrint('error: $error'),
        );
        _wmDeviceStreamController.add(_wmDevices);
      }
    });
  }
}

class MessageHandler {
  Ref? _ref;
  int _count = 1;
  int _sendMessageId = 0;
  bool _isAdvertising = false;
  DateTime _lastPing = DateTime.now();
  final _blePeripheral = FlutterBlePeripheral();
  List<Message> _messages = <Message>[];
  int _blockMessage = 1;

  factory MessageHandler(Ref ref) {
    return MessageHandler._(ref);
  }

  MessageHandler._(this._ref) {
    _count = 1;
    _sendMessageId = 0;
  }

  bool get isAdvertising => _isAdvertising;
  int get count => _count;
  final _lock = Lock();

  final AdvertiseSetParameters _advertiseSet = AdvertiseSetParameters(
    interval: intervalLow,
    txPowerLevel: txPowerHigh,
    legacyMode: true,
    // duration: 100,
    scannable: false,
    connectable: false,
  );

  Future<void> _sendMessage() async {
    await _lock.synchronized(() async {
      // check first, if there is already a message sending:
      if (_messages.firstWhereOrNull(
              (element) => element.state == MessageState.sendingMessage) !=
          null) {
        return;
      }
      // check if there is a message to send
      Message? message = _messages
          .firstWhereOrNull((e) => e.state == MessageState.queueMessage);
      if (message == null) {
        // no more messages to send, we can stop advertising
        // if (await _blePeripheral.isAdvertising) {
        await _blePeripheral.stop();
        if (_ref!.read(appActivityProvider.notifier).state !=
                AppActivityState.uploading &&
            _ref!.read(appActivityProvider.notifier).state !=
                AppActivityState.uploadingSuccess) {
          _ref!.read(appActivityProvider.notifier).state =
              AppActivityState.idle;
        }
        // }
        // }
        _isAdvertising = false;
        return;
      }
      // we have a new message to send, we dont need to stop advertising
      _isAdvertising = true;
      _setMessageState(message.messageId, MessageState.sendingMessage);
      debugPrint("send message: ${message.messageId} / ${message.commandName}");
      _lastPing = DateTime.now();
      if (Platform.isAndroid) {
        if (await _blePeripheral.isAdvertising) {
          _blePeripheral.changeAdvertiseData(AdvertiseData(
              manufacturerId: COMPANY_ID, manufacturerData: message.buffer));
        } else {
          // Android-specific code
          await _blePeripheral.start(
            advertiseData: AdvertiseData(
                manufacturerId: COMPANY_ID, manufacturerData: message.buffer),
            advertiseSetParameters: _advertiseSet,
          );
        }
      } else {
        // ios specific code
        if (await _blePeripheral.isAdvertising) {
          await _blePeripheral.stop();
        }
        await _blePeripheral.start(
          advertiseData:
              AdvertiseData(serviceUuid: Uuid(message.buffer).toString()),
          advertiseSetParameters: _advertiseSet,
        );
      }
      // start timeout timer
      var counter = message.timeoutMs ~/ 20;
      _blockMessage = message.messageId;
      while (_blockMessage > 0 && counter >= 0) {
        counter--;
        await Future.delayed(const Duration(milliseconds: 20));
      }
      _setMessageState(message.messageId, MessageState.timeoutMessage);
      _sendMessage();
    });
  }

  Message _generateMessages(
      int token, CommandPayload payload, int messageId, int timeoutMs) {
    var commandType = payload.map(
      resendMessageRequest: (_) => Command.cmdResendMessageRequest,
      scanRequest: (_) => Command.cmdScanRequest,
      scanResponse: (_) => Command.cmdScanResponse,
      otapBeginUploadRequest: (_) => Command.cmdOtapBeginUploadRequest,
      otapBeginUploadResponse: (_) => Command.cmdOtapBeginUploadResponse,
      otapUploadRequest: (_) => Command.cmdOtapUploadRequest,
      otapUploadResponse: (_) => Command.cmdOtapUploadResponse,
      error: (_) => 0,
    );
    var command =
        Command(messageId: messageId, command: commandType, payload: payload);
    return Message(
      buffer: commandToByteBuffer(token, command, Platform.isIOS ? 16 : 0),
      messageId: messageId,
      state: MessageState.queueMessage,
      timeoutMs: timeoutMs,
      commandName: command.toString(),
    );
  }

  void _setMessageStateTimeout(
      int messageId, MessageState state, int timeoutMs) {
    debugPrint(
        'setMessageStateTimeout: message found?: ${containsMessage(messageId)}');
    _messages = _messages.map((e) {
      if (e.messageId == messageId) {
        return e.copyWith(state: state, timeoutMs: timeoutMs);
      }
      return e;
    }).toList();
  }

  void _setMessageState(int messageId, MessageState state) {
    _messages = _messages.map((e) {
      if (e.messageId == messageId) {
        return e.copyWith(state: state);
      }
      return e;
    }).toList();
  }

  int _nextMessageId() {
    _sendMessageId++;
    if (_sendMessageId > 0x7fff || _sendMessageId < 0) {
      _sendMessageId = 1;
    }
    return _sendMessageId;
  }

  void setMessageReceived(int messageId) {
    _setMessageState(messageId, MessageState.done);
    if (_blockMessage == messageId) _blockMessage = 0;
  }

  void addMessage(CommandPayload payload,
      {int timeoutMs = 3000, int token = 0, messageId = 0}) {
    _messages.add(_generateMessages(token, payload,
        (messageId == 0) ? _nextMessageId() : messageId, timeoutMs));
    _count = _count + 1;
    _sendMessage();
  }

  void resendMessage(int messageId) {
    _setMessageStateTimeout(messageId, MessageState.queueMessage, 3000);
    _sendMessage();
  }

  bool containsMessage(int messageId) {
    return _messages.any((element) => element.messageId == messageId);
  }

  Future<void> stopAdvertising() async {
    if (await _blePeripheral.isAdvertising) {
      _blePeripheral.stop();
    }
  }
}
