import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GeneratedPluginRegistrant.register(with: self)

        let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
        let methodChanel = FlutterMethodChannel(name: "com.eliezerantonio/first_platform_channel", binaryMessenger: controller.binaryMessenger)

        methodChanel.setMethodCallHandler({ (call: FlutterMethodCall, result: FlutterResult) in
            if call.method == "version" {
                print(call.arguments ?? "nil")
                let version = UIDevice().systemVersion

                result("iOS \(version)")
            } else {
                result(FlutterMethodNotImplemented)
            }
        })

        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
