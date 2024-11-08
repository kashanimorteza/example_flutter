//----------------------------------------------- [ Description ]
/*
  ...
*/

//----------------------------------------------- [ Import ]
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers.dart';

//----------------------------------------------- [ Main ]
void main() {
  print('--- main');
  var url = 'http://0.0.0.0:8000';
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Provider_Xray(url)),
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

//----------------------------------------------- [ MyHomePage ]
class _MyHomePageState extends State<MyHomePage> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    print('--- MyHomePageState');
    final prv_xray = Provider.of<Provider_Xray>(context, listen: true);
    var b = prv_xray.Get_View();

    if (prv_xray.view == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return prv_xray.view;
    // return Scaffold(
    //   body: Padding(
    //     padding: const EdgeInsets.all(16.0),
    //     child: Table(
    //       border: TableBorder.all(), // Adds border to the table
    //       children: [
    //         TableRow(
    //           decoration: BoxDecoration(color: Colors.grey[300]),
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Text(
    //                 "Title",
    //                 style: TextStyle(fontWeight: FontWeight.bold),
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Text(
    //                 "Value",
    //                 style: TextStyle(fontWeight: FontWeight.bold),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
