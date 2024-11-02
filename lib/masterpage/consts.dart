import 'drawers.dart';

//-------------------------- [Enume]
enum OSLists { mac, linux, windows, chrome, ios, android, web }

enum DeviceLists { desktop, tablet, mobile }

enum SettingLists { theme, drawer }

//-------------------------- [Map]
Map<dynamic, dynamic> setting = {
  //----------MAC
  OSLists.mac: {
    DeviceLists.desktop: {
      SettingLists.theme: 'desktop_theme',
      SettingLists.drawer: DesktopDrawer(),
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'tablet_theme',
      SettingLists.drawer: TabletDrawer(),
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mobile_theme',
      SettingLists.drawer: MobileDrawer(),
    },
  },
  //----------Linux
  OSLists.linux: {
    DeviceLists.desktop: {
      SettingLists.theme: 'desktop_theme',
      SettingLists.drawer: DesktopDrawer(),
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'tablet_theme',
      SettingLists.drawer: TabletDrawer(),
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mobile_theme',
      SettingLists.drawer: MobileDrawer(),
    },
  },
  //----------Windows
  OSLists.windows: {
    DeviceLists.desktop: {
      SettingLists.theme: 'desktop_theme',
      SettingLists.drawer: DesktopDrawer(),
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'tablet_theme',
      SettingLists.drawer: TabletDrawer(),
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mobile_theme',
      SettingLists.drawer: MobileDrawer(),
    },
  },
  //----------Chrome
  OSLists.chrome: {
    DeviceLists.desktop: {
      SettingLists.theme: 'desktop_theme',
      SettingLists.drawer: DesktopDrawer(),
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'tablet_theme',
      SettingLists.drawer: TabletDrawer(),
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mobile_theme',
      SettingLists.drawer: MobileDrawer(),
    },
  },
  //----------IOS
  OSLists.ios: {
    DeviceLists.desktop: {
      SettingLists.theme: 'desktop_theme',
      SettingLists.drawer: DesktopDrawer(),
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'tablet_theme',
      SettingLists.drawer: TabletDrawer(),
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mobile_theme',
      SettingLists.drawer: MobileDrawer(),
    },
  },
  //----------Android
  OSLists.android: {
    DeviceLists.desktop: {
      SettingLists.theme: 'desktop_theme',
      SettingLists.drawer: DesktopDrawer(),
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'tablet_theme',
      SettingLists.drawer: TabletDrawer(),
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mobile_theme',
      SettingLists.drawer: MobileDrawer(),
    },
  },
  //----------Web
  OSLists.web: {
    DeviceLists.desktop: {
      SettingLists.theme: 'desktop_theme',
      SettingLists.drawer: DesktopDrawer(),
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'tablet_theme',
      SettingLists.drawer: TabletDrawer(),
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mobile_theme',
      SettingLists.drawer: MobileDrawer(),
    },
  },
};
