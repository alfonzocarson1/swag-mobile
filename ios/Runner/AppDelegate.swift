import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      GeneratedPluginRegistrant.register(with: self)
          let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
          let flavorChannel = FlutterMethodChannel(name: "flavor",
                                                    binaryMessenger: controller.binaryMessenger)
          flavorChannel.setMethodCallHandler({
            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
              let flavor = Bundle.main.infoDictionary?["Flavor"] as? String
              result(flavor)
          })
          if #available(iOS 10.0, *) {
                UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
              }
          return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
