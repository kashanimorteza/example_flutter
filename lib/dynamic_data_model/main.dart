//----------------------------------------------- [ Description ]
/*
  This example is about dynamic data model and dynamic witget
*/

//----------------------------------------------- [ Import ]
import 'package:flutter/material.dart';
import 'models.dart';

//----------------------------------------------- [ Main ]
void main() {
  print('--- main');
  runApp(MyApp());
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

//----------------------------------------------- [ _MyHomePageState ]
class _MyHomePageState extends State<MyHomePage> {
  Model_Xray model = new Model_Xray('http://0.0.0.0:8000');
  @override
  Widget build(BuildContext context) {
    print('--- MyHomePageState');
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
