import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'consts.dart';
import 'tools.dart';
import 'providers.dart';

//----------------------------------------------- [ Description ]
/*

*/

//----------------------------------------------- [ Main ]
void main() {
  print('--- main');

  //--------------------[Variable]
  OSLists os = GetOS();
  DeviceLists device = DeviceLists.desktop;

  //--------------------[RunApp]
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Provider_Drawer(os: os, device: device)),
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
    print('--- build');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      var prv_screen = Provider.of<Provider_Screen>(context, listen: false);
      prv_screen.updateScreenSize(MediaQuery.of(context).size.width);
      final prv_drawer = Provider.of<Provider_Drawer>(context, listen: false);
      prv_drawer.device = prv_screen.device;
    });
    return MaterialApp(home: MyHomePage());
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
    print('--- MyHomePage');
    final prv_drawer = Provider.of<Provider_Drawer>(context, listen: true);
    return Scaffold(
      appBar: AppBar(),
      drawer: prv_drawer.drawer,
      body: Center(
        child: Text('Responsive', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
