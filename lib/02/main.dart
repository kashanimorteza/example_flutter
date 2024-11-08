//----------------------------------------------- [ Description ]
/*
  ...
*/

//----------------------------------------------- [ Import ]
import 'package:flutter/material.dart';
import 'package:app_state_manager/dynamic_data_model/providers.dart';
import 'package:provider/provider.dart';

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
    var v = new Provider_Xray('_url');
    final prv_xray = Provider.of<Provider_Xray>(context, listen: true);
    var a = prv_xray.view;
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
