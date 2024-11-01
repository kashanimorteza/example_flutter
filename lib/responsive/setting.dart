import 'package:app_state_manager/responsive/drawers.dart';
import 'package:flutter/material.dart';
import 'consts.dart';

class Setting {
//-------------------------- [Fields]
  OSLists _os = OSLists.mac;
  DeviceLists _device = DeviceLists.desktop;
  var _drawer;
  String _theme = 't1';

//-------------------------- [Get]
  OSLists get os => _os;
  DeviceLists get device => _device;
  get drawer => _drawer;
  String get theme => _theme;

//-------------------------- [Set]
  set os(OSLists value) {
    _os = value;
  }

  set device(DeviceLists value) {
    _device = value;
  }

  set drawer(value) {
    _drawer = value;
  }

  set theme(String value) {
    _theme = value;
  }

//-------------------------- [Method]
  Setting({required OSLists os, required DeviceLists device}) {
    this._os = os;
    this._device = device;
    this._theme = setting[_os][_device][SettingLists.theme];
    this._drawer = setting[_os][_device][SettingLists.drawer];
  }

  @override
  String toString() {
    return '--- OS: $_os, Device: $_device, Theme: $_theme, Drawer: $_drawer ---';
  }
}
