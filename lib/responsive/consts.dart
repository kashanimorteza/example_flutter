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
      SettingLists.theme: 'mac_desktop_theme',
      SettingLists.drawer: MacDesktopDrawer,
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'mac_tablet_theme',
      SettingLists.drawer: MacTabletDrawer,
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mac_mobile_theme',
      SettingLists.drawer: MacMobileDrawer,
    },
  },
  //----------Linux
  OSLists.linux: {
    DeviceLists.desktop: {
      SettingLists.theme: 'linux_desktop_theme',
      SettingLists.drawer: LinuxDesktopDrawer,
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'linux_tablet_theme',
      SettingLists.drawer: LinuxTabletDrawer,
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'linux_mobile_theme',
      SettingLists.drawer: LinuxMobileDrawer,
    },
  },
  //----------Windows
  OSLists.windows: {
    DeviceLists.desktop: {
      SettingLists.theme: 'windows_desktop_theme',
      SettingLists.drawer: WindowsDesktopDrawer,
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'windows_tablet_theme',
      SettingLists.drawer: WindowsTabletDrawer,
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'windows_mobile_theme',
      SettingLists.drawer: WindowsMobileDrawer,
    },
  },
  //----------Chrome
  OSLists.chrome: {
    DeviceLists.desktop: {
      SettingLists.theme: 'chrome_desktop_theme',
      SettingLists.drawer: ChromeDesktopDrawer,
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'chrome_tablet_theme',
      SettingLists.drawer: ChromeTabletDrawer,
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'chrome_mobile_theme',
      SettingLists.drawer: ChromeMobileDrawer,
    },
  },
  //----------IOS
  OSLists.ios: {
    DeviceLists.desktop: {
      SettingLists.theme: 'ios_desktop_theme',
      SettingLists.drawer: IOSDesktopDrawer,
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'ios_tablet_theme',
      SettingLists.drawer: IOSTabletDrawer,
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'ios_mobile_theme',
      SettingLists.drawer: IOSMobileDrawer,
    },
  },
  //----------Android
  OSLists.android: {
    DeviceLists.desktop: {
      SettingLists.theme: 'android_desktop_theme',
      SettingLists.drawer: AndroidDesktopDrawer,
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'android_tablet_theme',
      SettingLists.drawer: AndroidTabletDrawer,
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'android_mobile_theme',
      SettingLists.drawer: AndroidMobileDrawer,
    },
  },
  //----------Web
  OSLists.web: {
    DeviceLists.desktop: {
      SettingLists.theme: 'web_desktop_theme',
      SettingLists.drawer: WebDesktopDrawer,
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'web_tablet_theme',
      SettingLists.drawer: WebTabletDrawer,
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'web_mobile_theme',
      SettingLists.drawer: WebMobileDrawer,
    },
  },
};
