//----------------------------------------------- [ Description ]
/*
  ...
*/

//----------------------------------------------- [ Import ]
import 'package:flutter/material.dart';
import 'package:app_state_manager/dynamic_data_model/providers.dart';
import 'package:provider/provider.dart';

//----------------------------------------------- [ Description ]
/*

*/

//----------------------------------------------- [ Main ]
void main() {
  print('--- main');
  var url = 'http://0.0.0.0:8000/fd051ac1-e342-4631-968d-db3f19b575e7';
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
class MyHomePage extends StatelessWidget {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    print('--- MyHomePageState');
    final prv_xray = Provider.of<Provider_Xray>(context, listen: true);
    return Scaffold(body: prv_xray.view);
  }
}
