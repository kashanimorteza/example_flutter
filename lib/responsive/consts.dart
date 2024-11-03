import 'drawers.dart';

//----------------------------------------------- [ Enum ]
enum OSLists { mac, linux, windows, chrome, ios, android, web }

enum DeviceLists { desktop, tablet, mobile }

enum SettingLists { theme, drawer }

//----------------------------------------------- [ Map ]
Map<dynamic, dynamic> const_setting = {
  //----------MAC
  OSLists.mac: {
    DeviceLists.desktop: {
      SettingLists.theme: 'desktop_theme',
      SettingLists.drawer: DrawerDesktop(),
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'tablet_theme',
      SettingLists.drawer: DrawerTablet(),
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mobile_theme',
      SettingLists.drawer: DrawerMobile(),
    },
  },
  //----------Linux
  OSLists.linux: {
    DeviceLists.desktop: {
      SettingLists.theme: 'desktop_theme',
      SettingLists.drawer: DrawerDesktop(),
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'tablet_theme',
      SettingLists.drawer: DrawerTablet(),
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mobile_theme',
      SettingLists.drawer: DrawerMobile(),
    },
  },
  //----------Windows
  OSLists.windows: {
    DeviceLists.desktop: {
      SettingLists.theme: 'desktop_theme',
      SettingLists.drawer: DrawerDesktop(),
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'tablet_theme',
      SettingLists.drawer: DrawerTablet(),
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mobile_theme',
      SettingLists.drawer: DrawerMobile(),
    },
  },
  //----------Chrome
  OSLists.chrome: {
    DeviceLists.desktop: {
      SettingLists.theme: 'desktop_theme',
      SettingLists.drawer: DrawerDesktop(),
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'tablet_theme',
      SettingLists.drawer: DrawerTablet(),
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mobile_theme',
      SettingLists.drawer: DrawerMobile(),
    },
  },
  //----------IOS
  OSLists.ios: {
    DeviceLists.desktop: {
      SettingLists.theme: 'desktop_theme',
      SettingLists.drawer: DrawerDesktop(),
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'tablet_theme',
      SettingLists.drawer: DrawerTablet(),
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mobile_theme',
      SettingLists.drawer: DrawerMobile(),
    },
  },
  //----------Android
  OSLists.android: {
    DeviceLists.desktop: {
      SettingLists.theme: 'desktop_theme',
      SettingLists.drawer: DrawerDesktop(),
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'tablet_theme',
      SettingLists.drawer: DrawerTablet(),
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mobile_theme',
      SettingLists.drawer: DrawerMobile(),
    },
  },
  //----------Web
  OSLists.web: {
    DeviceLists.desktop: {
      SettingLists.theme: 'desktop_theme',
      SettingLists.drawer: DrawerDesktop(),
    },
    DeviceLists.tablet: {
      SettingLists.theme: 'tablet_theme',
      SettingLists.drawer: DrawerTablet(),
    },
    DeviceLists.mobile: {
      SettingLists.theme: 'mobile_theme',
      SettingLists.drawer: DrawerMobile(),
    },
  },
};
