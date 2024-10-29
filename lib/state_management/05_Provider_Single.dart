import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//----------------------------------------------- [ Description ]
/*
  ma 3 ta kar darim yeki
  -----------------------
  1 - update nashodane kole class
  2 - joda kardane mantaghe app
  3 - modiriate data
  4 - hassasiate widget be update shodan bar asase taghir data

  Problems : 
  -----------------------
  1 - 1 provider register shode
  2 - Class rebuild mishe
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
    final CounterVariable = Provider.of<CounterProvider>(context);

    return MaterialApp(
        home: Scaffold(
      body: Column(children: [
        Text((CounterVariable.count).toString()),
        ElevatedButton(
          onPressed: () {
            print('--- ElevatedButton');
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
