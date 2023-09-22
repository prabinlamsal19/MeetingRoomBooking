import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoHelper {
  DeviceInfoHelper._();

  static DeviceInfoHelper get instance => DeviceInfoHelper._();

  final DeviceInfoPlugin _plugin = DeviceInfoPlugin();

  Future<bool> isBelowAndroid12() async {
    if (Platform.isIOS) {
      return true;
    } else {
      final deviceInfo = await _plugin.androidInfo;
      return deviceInfo.version.sdkInt < 31;
    }
  }
}
