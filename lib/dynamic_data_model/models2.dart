//----------------------------------------------- [ Description ]
/*
  This class get data from api
*/

//----------------------------------------------- [ Import ]
import 'package:flutter/material.dart';
import 'api.dart';
import 'consts.dart';

//----------------------------------------------- [ Model_Xray ]
class Model_Xray {
  //----------[Fields]
  var _url;
  var _api;
  var _model = const_model[const_model_list.xray_server]['api'];
  var _schema;

//----------[Get]

//----------[Set]

//----------[Method]
  Model_Xray(this._url) {
    _api = new MyApi(_url);
  }

  getSchema() {
    _api
        .getSchema(_model)
        .then((data) {
          _schema = data;
          print(_schema);
        })
        .catchError((error) {})
        .whenComplete(() {});
  }

  generate_view() {
    _api
        .getSchema(_model)
        .then((data) {
          _schema = data;
          print(_schema);
        })
        .catchError((error) {})
        .whenComplete(() {});

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

    // _api
    //     .getSchema(_model)
    //     .then((data) {
    //       _schema = data;
    //       print(_schema);
    //     })
    //     .catchError((error) {})
    //     .whenComplete(() {
    //       return Scaffold(
    //         body: Padding(
    //           padding: const EdgeInsets.all(16.0),
    //           child: Table(
    //             border: TableBorder.all(), // Adds border to the table
    //             children: [
    //               TableRow(
    //                 decoration: BoxDecoration(color: Colors.grey[300]),
    //                 children: [
    //                   Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Text(
    //                       "Title",
    //                       style: TextStyle(fontWeight: FontWeight.bold),
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Text(
    //                       "Value",
    //                       style: TextStyle(fontWeight: FontWeight.bold),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //       );
    //     });
  }

  // generate_edit() {
  //   return new Create_Table();
  // }
}

// //----------------------------------------------- [ Create_Table ]
// class Create_Table extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {}
// }


