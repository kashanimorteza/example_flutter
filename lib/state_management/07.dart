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
    final CounterVariable =
        Provider.of<CounterProvider>(context, listen: false);

    return MaterialApp(
        home: Scaffold(
      body: Column(children: [
        Consumer<CounterProvider>(
          builder: (context, value, child) {
            return Text(value.count.toString());
          },
        ),
        ElevatedButton(
          onPressed: () {
            //print('--- ElevatedButton');
            CounterVariable.increment();
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
  void increment() {
    print('--- increment');
    _count++;
    notifyListeners();
  }
}
