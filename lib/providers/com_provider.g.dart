// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'com_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$comRepositoryHash() => r'7dddda840093b939cffceaee931b1a994e1ab5d0';

/// See also [comRepository].
@ProviderFor(comRepository)
final comRepositoryProvider = Provider<ComRepository>.internal(
  comRepository,
  name: r'comRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$comRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ComRepositoryRef = ProviderRef<ComRepository>;
String _$wirepasDevicesHash() => r'6f8dda63ad99f9bc2f9a366a2c219ddb2adf0e26';

/// See also [wirepasDevices].
@ProviderFor(wirepasDevices)
final wirepasDevicesProvider =
    AutoDisposeStreamProvider<List<WirepasDevice>>.internal(
  wirepasDevices,
  name: r'wirepasDevicesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$wirepasDevicesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WirepasDevicesRef = AutoDisposeStreamProviderRef<List<WirepasDevice>>;
String _$uploadProgressHash() => r'd33dc4c2acd4e6d02d0be82ba13348a9d68594b4';

/// See also [UploadProgress].
@ProviderFor(UploadProgress)
final uploadProgressProvider =
    AutoDisposeNotifierProvider<UploadProgress, int>.internal(
  UploadProgress.new,
  name: r'uploadProgressProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$uploadProgressHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UploadProgress = AutoDisposeNotifier<int>;
String _$appActivityHash() => r'3510da7b7f8cb4c4405a9c7d048535b0af6f5235';

/// See also [AppActivity].
@ProviderFor(AppActivity)
final appActivityProvider =
    AutoDisposeNotifierProvider<AppActivity, AppActivityState>.internal(
  AppActivity.new,
  name: r'appActivityProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appActivityHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppActivity = AutoDisposeNotifier<AppActivityState>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
