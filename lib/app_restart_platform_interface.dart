import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'app_restart_method_channel.dart';

abstract class AppRestartPlatform extends PlatformInterface {
  /// Constructs a AppRestartPlatform.
  AppRestartPlatform() : super(token: _token);

  static final Object _token = Object();

  static AppRestartPlatform _instance = MethodChannelAppRestart();

  /// The default instance of [AppRestartPlatform] to use.
  ///
  /// Defaults to [MethodChannelAppRestart].
  static AppRestartPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AppRestartPlatform] when
  /// they register themselves.
  static set instance(AppRestartPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Restart the app or trigger platform-specific action.
  Future<void> restartApp();

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
