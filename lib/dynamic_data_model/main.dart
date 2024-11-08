//----------------------------------------------- [ Description ]
/*
  ...
*/

//----------------------------------------------- [ Import ]
import 'package:flutter/material.dart';
import 'package:app_state_manager/dynamic_data_model/providers.dart';
import 'package:provider/provider.dart';

//----------------------------------------------- [ Main ]
void main() {
  print('--- main');
  var url = 'http://0.0.0.0:8000';
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Provider_Xray(url)),
      ],
      child: MyApp(),
    ),
  );
}

//----------------------------------------------- [ MyApp ]
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('--- MyApp');
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

//----------------------------------------------- [ MyHomePage ]
class _MyHomePageState extends State<MyHomePage> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    print('--- MyHomePageState');
    final prv_xray = Provider.of<Provider_Xray>(context, listen: true);
    if (prv_xray.view == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return prv_xray.view;
  }
}
