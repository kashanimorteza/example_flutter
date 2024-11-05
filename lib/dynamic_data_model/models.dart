//----------------------------------------------- [ Description ]
/*
  This class get data from api
*/

//----------------------------------------------- [ Import ]
import 'package:app_state_manager/dynamic_data_model/tools.dart';
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
    getSchema();
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
    return new Create_Table();
  }

  generate_edit() {
    return new Create_Table();
  }
}

//----------------------------------------------- [ Create_Table ]
class Create_Table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Table(
        columnWidths: {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(2),
        },
        border: TableBorder.all(color: Colors.black),
        children: [
          Create_Table_ROW('Version', 'Enter version'),
          Create_Table_ROW('Config URL', 'Enter config URL'),
          Create_Table_ROW('API Host', 'Enter API host'),
          Create_Table_ROW('API Port', 'Enter API port'),
        ],
      ),
    );
  }
}
