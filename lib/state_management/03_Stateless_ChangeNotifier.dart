import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//----------------------------------------------- [ Description ]
/*
  3 ta dastan darim : ui va logic va data
  stateless ghabeliate rebuild khodash ra nadarad
  pas agar value yek variable ra taghir bedahim, Widget ke az an variable taghzie mishavad update nemishavad
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
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

//----------------------------------------------- [ MyAppState ]
class MyAppState extends ChangeNotifier {
  var current = 'First value';

  void getNext() {
    print('--- getNext');
    current = WordPair.random().asLowerCase;
    notifyListeners();
  }
}

//----------------------------------------------- [ MyHomePage ]
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('--- MyHomePage');
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children: [
          Text(appState.current),
          ElevatedButton(
            onPressed: () {
              print('--- ElevatedButton');
              appState.getNext();
            },
            child: Text('Run'),
          ),
        ],
      ),
    );
  }
}
