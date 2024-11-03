import 'package:flutter/material.dart';
import 'drawers.dart';
import 'consts.dart';

//----------------------------------------------- [ Provider_Screen ]
class Provider_Screen with ChangeNotifier {
  //----------[Fields]
  DeviceLists _device = DeviceLists.desktop;

  //----------[Get]
  DeviceLists get device => _device;

  //----------[Method]
  void updateScreenSize(double width) {
    if (width < 600) {
      _device = DeviceLists.mobile;
    } else if (width >= 600 && width < 1200) {
      _device = DeviceLists.tablet;
    } else {
      _device = DeviceLists.desktop;
    }
    //notifyListeners();
  }
}

//----------------------------------------------- [ Provider_Setting ]
class Provider_Drawer with ChangeNotifier {
//----------[Fields]
  OSLists _os = OSLists.mac;
  DeviceLists _device = DeviceLists.desktop;
  Widget _drawer = DrawerDesktop();
  String _theme = 't1';

//----------[Get]
  OSLists get os => _os;
  DeviceLists get device => _device;
  Widget get drawer => _drawer;
  String get theme => _theme;

//----------[Set]
  set os(OSLists value) {
    _os = value;
    update();
  }

  set device(DeviceLists value) {
    _device = value;
    update();
  }

//----------[Method]
  Provider_Drawer({required OSLists os, required DeviceLists device}) {
    this._os = os;
    this._device = device;
    update();
  }

  void update() {
    this._theme = const_setting[_os][_device][SettingLists.theme];
    this._drawer = const_setting[_os][_device][SettingLists.drawer];
    notifyListeners();
  }
}
