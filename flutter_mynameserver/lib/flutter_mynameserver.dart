import 'flutter_mynameserver_platform_interface.dart';

class FlutterMynameserver {
  Future<String?> getPlatformVersion() {
    return FlutterMynameserverPlatform.instance.getPlatformVersion();
  }

  Future<String?> getServers() {
    return FlutterMynameserverPlatform.instance.getServers();
  }
}
