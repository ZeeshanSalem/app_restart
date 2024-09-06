
import 'app_restart_platform_interface.dart';

class AppRestart {
  Future<String?> getPlatformVersion() {
    return AppRestartPlatform.instance.getPlatformVersion();
  }
}
