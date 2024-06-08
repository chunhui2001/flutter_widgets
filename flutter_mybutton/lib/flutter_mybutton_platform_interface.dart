import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_mybutton_method_channel.dart';

abstract class FlutterMybuttonPlatform extends PlatformInterface {
  /// Constructs a FlutterMybuttonPlatform.
  FlutterMybuttonPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterMybuttonPlatform _instance = MethodChannelFlutterMybutton();

  /// The default instance of [FlutterMybuttonPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterMybutton].
  static FlutterMybuttonPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterMybuttonPlatform] when
  /// they register themselves.
  static set instance(FlutterMybuttonPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
