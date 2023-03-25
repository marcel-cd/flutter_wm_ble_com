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

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wirepas_device.freezed.dart';

// enum Workdays
@freezed
class WirepasDevice with _$WirepasDevice {
  const factory WirepasDevice({
    required String id,
    required int token,
    required int firmwareVersionMajor,
    required int firmwareVersionMinor,
    required bool isSink,
    required int rssi,
  }) = _WirepasDevice;
}