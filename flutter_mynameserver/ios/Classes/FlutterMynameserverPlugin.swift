import Flutter
import UIKit

public class FlutterMynameserverPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "plugins.flutter.io/flutter_mynameserver", binaryMessenger: registrar.messenger())
    let instance = FlutterMynameserverPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "getServers":
      result("iOS: Your server should be update every 15 minutes")
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
