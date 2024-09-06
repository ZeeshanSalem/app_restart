// import 'package:flutter_test/flutter_test.dart';
// import 'package:app_restart/app_restart.dart';
// import 'package:app_restart/app_restart_platform_interface.dart';
// import 'package:app_restart/app_restart_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockAppRestartPlatform
//     with MockPlatformInterfaceMixin
//     implements AppRestartPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final AppRestartPlatform initialPlatform = AppRestartPlatform.instance;
//
//   test('$MethodChannelAppRestart is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelAppRestart>());
//   });
//
//   test('getPlatformVersion', () async {
//     AppRestart appRestartPlugin = AppRestart();
//     MockAppRestartPlatform fakePlatform = MockAppRestartPlatform();
//     AppRestartPlatform.instance = fakePlatform;
//
//     expect(await appRestartPlugin.getPlatformVersion(), '42');
//   });
// }
