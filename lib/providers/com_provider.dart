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

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_wm_ble_com/models/wirepas_device.dart';
import 'package:flutter_wm_ble_com/repositories/com_ble_repository.dart';
import 'package:flutter_wm_ble_com/repositories/com_repository.dart';

part 'com_provider.g.dart';

@Riverpod(keepAlive: true)
ComRepository comRepository(ComRepositoryRef ref) => ComBleRepository(ref);

@riverpod
class UploadProgress extends _$UploadProgress {
  @override
  int build() => 0;
}

enum AppActivityState { boot, scanning, idle, uploading, uploadingSuccess }

@riverpod
class AppActivity extends _$AppActivity {
  @override
  AppActivityState build() => AppActivityState.boot;
}

@riverpod
Stream<List<WirepasDevice>> wirepasDevices(WirepasDevicesRef ref) {
  return ref.watch(comRepositoryProvider).wirepasDevices();
}
