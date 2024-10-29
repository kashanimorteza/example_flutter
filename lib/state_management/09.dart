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
    init();
  }

  void init() {
    increase();
  }

  void getCount() async {
    increase();
    this.notify();
  }

  void increase() async {
    _count = _count + 1;
  }

  void notify() {
    notifyListeners();
  }
}
