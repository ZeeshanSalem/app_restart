import Flutter
import UIKit
import UserNotifications

public class SwiftAppRestartPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "restartApp", binaryMessenger: registrar.messenger())
        let instance = SwiftAppRestartPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "restartApp":
            restartApp()
            result(nil)
        case "getPlatformVersion":
            result("iOS " + UIDevice.current.systemVersion)
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    private func restartApp() {
        // Request permission to send notifications
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { granted, _ in
            if granted {
                self.sendLocalNotification()
            } else {
                // Handle case where notification permission is not granted
                print("Notification permission not granted")
            }
        }

        // Exit the app
        exit(0)
    }

    private func sendLocalNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Restart Required"
        content.body = "Tap to reopen the app."
        content.sound = UNNotificationSound.default

        let request = UNNotificationRequest(identifier: "AppRestartNotification", content: content, trigger: nil)

        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Error adding notification: \(error)")
            }
        }
    }
}
