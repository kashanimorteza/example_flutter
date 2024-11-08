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

  getSchema() async {
    _schema = await _api.getSchema(_model);
  }

  generate_view() async {
    await getSchema();
    print(_schema);
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'aaaaaa',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
