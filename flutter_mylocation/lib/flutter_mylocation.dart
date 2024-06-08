
import 'flutter_mylocation_platform_interface.dart';

class FlutterMylocation {
  Future<String?> getPlatformVersion() {
    return FlutterMylocationPlatform.instance.getPlatformVersion();
  }

  Future<String?> getLocation() {
    return FlutterMylocationPlatform.instance.getLocation();
  }
}
