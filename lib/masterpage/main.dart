import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers.dart';
import 'drawers.dart';

//----------------------------------------------- [ Description ]
/*
  this is a example about master page and route pages
*/

//----------------------------------------------- [ Main ]
void main() {
  print('--- main');
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Provider_Page()),
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
    return MaterialApp(home: MyHomePage());
  }
}

//----------------------------------------------- [ MyHomePage ]
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//----------------------------------------------- [ _MyHomePageState ]
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print('--- _MyHomePageState');
    final prv_page = Provider.of<Provider_Page>(context, listen: true);

    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(),
      body: prv_page.cls,
    );
  }
}
