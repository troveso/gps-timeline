import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    var GMSServicesKey = ""
    if let path = Bundle.main.path(forResource: "GMSSKey", ofType: "txt") {
      let key = try! String.init(contentsOfFile: path)
      GMSServicesKey = key
    }
    GMSServices.provideAPIKey("AIzaSyAWz42w5jX4NsfF_VaF7w-L56qqxhUiTgU")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
