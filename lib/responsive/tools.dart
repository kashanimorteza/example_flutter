import 'dart:io';
import 'package:flutter/material.dart';
import 'consts.dart';

OSLists GetOS() {
  OSLists os = OSLists.mac;

  if (Platform.isMacOS) {
    os = OSLists.mac;
  } else if (Platform.isLinux) {
    os = OSLists.linux;
  } else if (Platform.isWindows) {
    os = OSLists.windows;
  } else if (Platform.isFuchsia) {
    os = OSLists.chrome;
  } else if (Platform.isIOS) {
    os = OSLists.ios;
  } else if (Platform.isAndroid) {
    os = OSLists.android;
  }
  return os;
}

DeviceLists GetDevice(context) {
  DeviceLists device = DeviceLists.desktop;
  double maxWidth = MediaQuery.of(context).size.width;

  if (maxWidth < 600) {
    device = DeviceLists.mobile;
  } else if (maxWidth >= 600 && maxWidth < 1200) {
    device = DeviceLists.tablet;
  } else {
    device = DeviceLists.desktop;
  }

  return device;
}
