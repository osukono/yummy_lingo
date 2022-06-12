import 'dart:io';

import 'package:permission_handler/permission_handler.dart';

Future<bool> isStorageGranted() async {
  if (Platform.isAndroid) {
    return await isPermissionGranted(Permission.storage);
  }

  return true;
}

Future<bool> isPermissionGranted(Permission permission) async {
  if (await permission.status.isGranted) {
    return true;
  }

  return await permission.request().isGranted;
}
