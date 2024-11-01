import 'package:flutter/material.dart';
import 'consts.dart';

//----------------------------------------------- [ Provider_Setting ]
class Provider_Setting with ChangeNotifier {
//----------[Fields]
  OSLists _os = OSLists.mac;
  DeviceLists _device = DeviceLists.desktop;
  var _drawer;
  String _theme = 't1';

//----------[Get]
  OSLists get os => _os;
  DeviceLists get device => _device;
  get drawer => _drawer;
  String get theme => _theme;

//----------[Set]
  set os(OSLists value) {
    _os = value;
    update();
    notifyListeners();
  }

  set device(DeviceLists value) {
    _device = value;
    update();
    notifyListeners();
  }

  set drawer(value) {
    _drawer = value;
    update();
    notifyListeners();
  }

  set theme(String value) {
    _theme = value;
    update();
    notifyListeners();
  }

//----------[Method]
  Provider_Setting({required OSLists os, required DeviceLists device}) {
    this._os = os;
    this._device = device;
    update();
  }

  void update() {
    this._theme = setting[_os][_device][SettingLists.theme];
    this._drawer = setting[_os][_device][SettingLists.drawer];
  }
}

//----------------------------------------------- [ Provider_Screen ]
class Provider_Screen with ChangeNotifier {
  bool isMobile = false;
  bool isTablet = false;
  bool isDesktop = false;

  void updateScreenSize(double width) {
    if (width < 600) {
      isMobile = true;
      isTablet = false;
      isDesktop = false;
    } else if (width >= 600 && width < 1200) {
      isMobile = false;
      isTablet = true;
      isDesktop = false;
    } else {
      isMobile = false;
      isTablet = false;
      isDesktop = true;
    }
    notifyListeners();
  }
}
