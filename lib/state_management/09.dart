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
  var _count = 0;
  get count => _count;

  CounterProvider() {
    getCount();
  }

  void getCount() {
    increase().whenComplete(() {
      print('---CounterProvider---getCount---${_count}');
      notifyListeners();
    });
  }

  Future increase() async {
    await Future.delayed(Duration(seconds: 2));
    _count = _count + 1;
    print('---CounterProvider---increase---${_count}');
  }
}
