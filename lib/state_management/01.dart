import 'package:flutter/material.dart';

//----------------------------------------------- [ Description ]
/*
  3 ta dastan darim : UI va Logic va Data
  stateless ghabeliate rebuild khodash ra nadarad
  pas agar value yek variable ra taghir bedahim ba yek dokmeh, Widget ke az an variable taghzie mishavad update nemishavad
  pas niaz be stateful peyda shod
*/

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
class MyHomePage extends StatelessWidget {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    print('--- MyHomePage');
    return Scaffold(
      body: Column(
        children: [
          Text(value.toString()),
          ElevatedButton(
            onPressed: () {
              print('--- ElevatedButton');
              value++;
              print(value.toString());
            },
            child: Text('Run'),
          ),
        ],
      ),
    );
  }
}
