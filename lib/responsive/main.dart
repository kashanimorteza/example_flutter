import 'dart:io';
import 'consts.dart';
import 'providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//----------------------------------------------- [ Description ]
/*

*/

//----------------------------------------------- [ Main ]
void main() {
  //--------------------[Variable]
  OSLists os = OSLists.mac;
  DeviceLists device = DeviceLists.desktop;

  //--------------------[Platform]
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

  //--------------------[RunApp]
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => Provider_Setting(os: os, device: device)),
        ChangeNotifierProvider(create: (context) => Provider_Screen()),
      ],
      child: MyApp(),
    ),
  );
}

//----------------------------------------------- [ MyApp ]
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

//----------------------------------------------- [ MyHomePage ]
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//----------------------------------------------- [ _MyHomePageState ]
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final prv_setting = Provider.of<Provider_Setting>(context, listen: true);
    final prv_screen = Provider.of<Provider_Screen>(context, listen: false);

    return LayoutBuilder(
      builder: (context, constraints) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          prv_screen.updateScreenSize(constraints.maxWidth);
          prv_setting.device = prv_screen.device;
        });

        return Scaffold(
          appBar: AppBar(
            title: Text('Screen Size Provider Example'),
          ),
          drawer: prv_setting.drawer,
          body: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    prv_setting.os = OSLists.mac;
                  },
                  child: Text('Mac'),
                ),
                ElevatedButton(
                  onPressed: () {
                    prv_setting.os = OSLists.linux;
                  },
                  child: Text('Linux'),
                ),
                ElevatedButton(
                  onPressed: () {
                    prv_setting.os = OSLists.windows;
                  },
                  child: Text('Windows'),
                ),
                ElevatedButton(
                  onPressed: () {
                    prv_setting.os = OSLists.chrome;
                  },
                  child: Text('Chrome'),
                ),
                ElevatedButton(
                  onPressed: () {
                    prv_setting.os = OSLists.web;
                  },
                  child: Text('Web'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
