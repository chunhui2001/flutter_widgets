import Flutter
import UIKit

public class FlutterMylocationPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "plugins.flutter.io/flutter_mylocation", binaryMessenger: registrar.messenger())
    let instance = FlutterMylocationPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "getLocation":
      result("iOS Location")
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
