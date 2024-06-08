import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_mylocation_method_channel.dart';

abstract class FlutterMylocationPlatform extends PlatformInterface {

  FlutterMylocationPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterMylocationPlatform _instance = MethodChannelFlutterMylocation();

  static FlutterMylocationPlatform get instance => _instance;

  static set instance(FlutterMylocationPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getLocation() {
    throw UnimplementedError('location() has not been implemented.');
  }
}
