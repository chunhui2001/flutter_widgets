import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_mybutton_platform_interface.dart';

/// An implementation of [FlutterMybuttonPlatform] that uses method channels.
class MethodChannelFlutterMybutton extends FlutterMybuttonPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugins.flutter.io/flutter_mybutton');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
