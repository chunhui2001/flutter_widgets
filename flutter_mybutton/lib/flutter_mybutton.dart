
import 'flutter_mybutton_platform_interface.dart';

class FlutterMybutton {
  Future<String?> getPlatformVersion() {
    return FlutterMybuttonPlatform.instance.getPlatformVersion();
  }
}
