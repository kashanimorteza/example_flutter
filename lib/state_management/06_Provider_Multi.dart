import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//----------------------------------------------- [ Description ]
/*
  Problems : 
  -----------------------
  2 - Class rebuild mishe
*/

//----------------------------------------------- [ Main ]
void main() {
  print('--- main');
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider1()),
        ChangeNotifierProvider(create: (context) => CounterProvider2()),
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
    final CounterVariable1 = Provider.of<CounterProvider1>(context);
    final CounterVariable2 = Provider.of<CounterProvider2>(context);

    return MaterialApp(
        home: Scaffold(
      body: Column(children: [
        Text((CounterVariable1.count).toString()),
        ElevatedButton(
          onPressed: () {
            print('--- ElevatedButton 1');
            CounterVariable1.increment();
          },
          child: Text('ElevatedButton 1'),
        ),
        Text((CounterVariable2.count).toString()),
        ElevatedButton(
          onPressed: () {
            print('--- ElevatedButton 2');
            CounterVariable2.increment();
          },
          child: Text('ElevatedButton 2'),
        ),
      ]),
    ));
  }
}

//----------------------------------------------- [ Provider ]
class CounterProvider1 with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void increment() {
    print('--- CounterProvider1');
    _count++;
    notifyListeners();
  }
}

class CounterProvider2 with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void increment() {
    print('--- CounterProvider2');
    _count++;
    notifyListeners();
  }
}
