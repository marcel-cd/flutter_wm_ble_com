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

import 'package:flutter/material.dart';
import 'package:flutter_wm_ble_com/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_wm_ble_com/components/error_text.dart';
import 'package:flutter_wm_ble_com/models/wirepas_device.dart';
import 'package:flutter_wm_ble_com/providers/com_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: Text(
          'Wirepas Firmware Updater',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
          ),
        ),
      ),
      body: _buildBody(context, ref),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('marcel.graber@steinel.ch',
            style: TextStyle(
              color: Colors.grey,
              fontStyle: FontStyle.normal,
            )),
        backgroundColor: Theme.of(context).colorScheme.surface,
        onPressed: () {
          _launchEmailClient();
        },
        icon: const Icon(Icons.email_rounded, color: Colors.grey),
      ),
    );
  }

  Future<void> _launchEmailClient() async {
    final url = Uri.parse(
        'mailto:marcel.graber@steinel.ch?subject=Wirepas%20Firmware%20Updater');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch email client');
    }
  }

  Widget _buildBody(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'This app demonstrates how to use the Wirepas BLE communication library to update the firmware of a Wirepas Mesh network.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 30),
          _buildScanButton(context, ref),
          const SizedBox(height: 30),
          _buildDeviceList(context, ref),
        ],
      ),
    );
  }

  Widget _buildDeviceList(BuildContext context, WidgetRef ref) {
    return ref.watch(wirepasDevicesProvider).when(
          data: (data) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return _buildWirepasDeviceItem(data[index], context, ref);
              },
            );
          },
          error: (error, stackTrace) => ErrorText(
            error: error.toString(),
          ),
          loading: () => Container(),
        );
  }

  Widget _buildWirepasDeviceItem(
      WirepasDevice wmDevice, BuildContext context, WidgetRef ref) {
    final uploadProgress = ref.watch(uploadProgressProvider);
    return Column(
      children: [
        InkWell(
          child: Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        wmDevice.isSink ? 'Wirepas Sink' : 'Wirepas Node',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Text(
                        'Version: ${wmDevice.firmwareVersionMajor}.${wmDevice.firmwareVersionMinor}',
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: wmDevice.firmwareVersionMinor !=
                                  appFirmwareVersion
                              ? Theme.of(context).colorScheme.error
                              : Colors.green,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'ID: ${wmDevice.id}\n'
                        'RSSI: ${wmDevice.rssi}',
                      ),
                    ],
                  ),
                  const Spacer(),
                  wmDevice.firmwareVersionMinor == appFirmwareVersion
                      ? const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 40,
                        )
                      : Column(children: [
                          new CircularPercentIndicator(
                            radius: 60.0,
                            lineWidth: 10.0,
                            percent: uploadProgress / 100,
                            center: Text("$uploadProgress %",
                                style: const TextStyle(fontSize: 16)),
                            progressColor: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: uploadProgress == 0
                                ? () => {
                                      wmDevice.isSink
                                          ? ref
                                              .read(comRepositoryProvider)
                                              .uploadFirmware()
                                          : null
                                    }
                                : null,
                            child: const Text('Start Upload'),
                          ),
                        ]),
                ],
              ),
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildScanButton(BuildContext context, WidgetRef ref) {
    AppActivityState appActivity = ref.watch(appActivityProvider);
    return appActivity == AppActivityState.uploading
        ? Container()
        : appActivity == AppActivityState.uploadingSuccess
            ? ElevatedButton(
                onPressed: () {
                  ref.read(comRepositoryProvider).start();
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.refresh,
                        semanticLabel: 'Start Scan',
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text("Upload success! Reload device list",
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ),
              )
            : ElevatedButton(
                onPressed: () async {
                  if (appActivity == AppActivityState.scanning) {
                    ref.read(comRepositoryProvider).stop();
                  } else {
                    // ask for permissions first
                    if (await _requestPermissions()) {
                      ref.read(comRepositoryProvider).start();
                    }
                  }
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
                child: appActivity == AppActivityState.scanning
                    ? Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 24,
                              child: const CircularProgressIndicator(
                                strokeWidth: 3,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text("Stop searching",
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              appActivity == AppActivityState.idle
                                  ? Icons.refresh
                                  : Icons.arrow_right,
                              semanticLabel: 'Start Scan',
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                                appActivity == AppActivityState.idle
                                    ? "Reload devices"
                                    : "Search for Wirepas Sink Nodes",
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
              );
  }

  Future<bool> _requestPermissions() async {
    var ret = false;
    var permanent = false;
    final Map<Permission, PermissionStatus> statuses = await [
      Permission.bluetooth,
      Permission.bluetoothAdvertise,
      Permission.bluetoothConnect,
      Permission.bluetoothScan,
      Permission.location,
    ].request();
    for (final status in statuses.keys) {
      if (statuses[status] == PermissionStatus.granted) {
        debugPrint('$status permission granted');
        ret = true;
      } else if (statuses[status] == PermissionStatus.denied) {
        debugPrint(
          '$status denied. Show a dialog with a reason and again ask for the permission.',
        );
      } else if (statuses[status] == PermissionStatus.permanentlyDenied) {
        permanent = true;
        debugPrint(
          '$status permanently denied. Take the user to the settings page.',
        );
      }
    }
    if (permanent && !ret) {}
    return ret;
  }
}
