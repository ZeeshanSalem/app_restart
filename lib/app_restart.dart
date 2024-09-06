
import 'dart:developer';

import 'app_restart_platform_interface.dart';

class AppRestart {
  /// Restarts the app or triggers appropriate platform-specific action.
  static Future<void> restartApp() async {
    try {
      await AppRestartPlatform.instance.restartApp();
    } on Exception catch (e) {
      log('Failed to restart the app: $e');
    }
  }
  Future<String?> getPlatformVersion() {
    return AppRestartPlatform.instance.getPlatformVersion();
  }
}
