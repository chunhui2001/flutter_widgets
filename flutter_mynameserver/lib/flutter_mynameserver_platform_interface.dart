import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_mynameserver_method_channel.dart';

abstract class FlutterMynameserverPlatform extends PlatformInterface {

  FlutterMynameserverPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterMynameserverPlatform _instance = MethodChannelFlutterMynameserver();

  static FlutterMynameserverPlatform get instance => _instance;

  static set instance(FlutterMynameserverPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getServers() {
    throw UnimplementedError('servers() has not been implemented.');
  }
}
