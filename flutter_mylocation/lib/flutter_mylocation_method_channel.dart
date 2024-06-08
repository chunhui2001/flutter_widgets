import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_mylocation_platform_interface.dart';

class MethodChannelFlutterMylocation extends FlutterMylocationPlatform {

  @visibleForTesting
  final methodChannel = const MethodChannel('plugins.flutter.io/flutter_mylocation');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
  
  @override
  Future<String?> getLocation() async {
    final version = await methodChannel.invokeMethod<String>('getLocation');
    return version;
  }
}
