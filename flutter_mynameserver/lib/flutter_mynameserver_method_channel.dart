import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_mynameserver_platform_interface.dart';

class MethodChannelFlutterMynameserver extends FlutterMynameserverPlatform {

  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_mynameserver');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getServers() async {
    final version = await methodChannel.invokeMethod<String>('getServers');
    return version;
  }
}
