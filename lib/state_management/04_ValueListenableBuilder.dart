import 'package:flutter/material.dart';

//----------------------------------------------- [ Description ]
/*
  chon nemikhaym rebuild konim pas nemitonim az stateful estefade konim
  pas niaz be ye chiizi darim ke vaghti taghir kard khodesh update beshe
  avalin moshkel in ast ke wiget hai ke az on varieble taghzie mishavand bayad dar darone ValueListenableBuilder begzarim
  2vomin moshkel ine ke agar yek widget az 2 variable taghzie mishod nemishe az ValueListenableBuilder estefade kard
  3 vomin moshkel ine ke ValueListenableBuilder faghat 1 parameter value mishe azash gereft 
  4omin moshkel ine ke age 10 ta data dashtim bayad 10 ta az in variable ha create mikardim
  in shod ke state managment omad vasat
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
  final ValueNotifier<int> counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    print('--- MyHomePage');
    return Scaffold(
      body: Column(
        children: [
          ValueListenableBuilder<int>(
            valueListenable: counter,
            builder: (context, value, child) {
              return Text(value.toString());
            },
          ),
          ElevatedButton(
            onPressed: () {
              print('--- ElevatedButton');
              counter.value++;
              print(counter.value);
            },
            child: Text('Run'),
          ),
        ],
      ),
    );
  }
}
