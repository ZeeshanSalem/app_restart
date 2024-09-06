import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'app_restart_platform_interface.dart';

/// An implementation of [AppRestartPlatform] that uses method channels.
class MethodChannelAppRestart extends AppRestartPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('app_restart');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
