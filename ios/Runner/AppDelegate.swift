import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    // Hide your app’s preview window
    override func applicationWillResignActive(_: UIApplication ) {
     self.window?.isHidden = true;
    }

    // Show your app’s preview window
    override func applicationDidBecomeActive(_: UIApplication) {
     self.window?.isHidden = false;
    }
}
