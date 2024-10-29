import 'package:flutter/material.dart';

//----------------------------------------------- [ Description ]
/*
  stateful ba yek methond mitavanad khodash ra rebuild konad 
  amma moshkelash in ast ke tamame widget ha mojadad sakhte mishavand
  ma niaz darim widget morede nazar rebuid beshavad na hamye widget ha 
  pas niaz shod be ValueNotifier
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
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//----------------------------------------------- [ _MyHomePageState ]
class _MyHomePageState extends State<MyHomePage> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    print('--- MyHomePageState');
    return Scaffold(
      body: Column(
        children: [
          Text(value.toString()),
          ElevatedButton(
            onPressed: () {
              print('---ElevatedButton');
              setState(() {
                print('---setState');
                value++;
                print(value.toString());
              });
            },
            child: Text('Run'),
          ),
        ],
      ),
    );
  }
}
