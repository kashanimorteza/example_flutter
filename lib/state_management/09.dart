import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//----------------------------------------------- [ Description ]
/*

*/

//----------------------------------------------- [ Main ]
void main() {
  print('--- main');
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MyApp(),
    ),
  );
}

//----------------------------------------------- [ MyApp ]
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('--- MyApp');

    final prv = Provider.of<CounterProvider>(context, listen: true);
    print('---MyApp---build---${prv.count}');

    return MaterialApp(
        home: Scaffold(
      body: Column(children: [
        Text((prv.count).toString()),
        ElevatedButton(
          onPressed: () {
            print('--- ElevatedButton');
            prv.getCount();
          },
          child: Text('Run'),
        ),
      ]),
    ));
  }
}

//----------------------------------------------- [ Provider ]
class CounterProvider with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  CounterProvider() {
    getCount();
  }

  void getCount() {
    increase().whenComplete(() {
      print('---CounterProvider---getCount---${_count}');
      notify();
    });
  }

  Future increase() async {
    await Future.delayed(Duration(seconds: 2));
    _count = _count + 1;
    print('---CounterProvider---increase---${_count}');
  }

  void notify() {
    print('---CounterProvider---notify---${_count}');
    notifyListeners();
  }
}
