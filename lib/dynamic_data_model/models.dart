//----------------------------------------------- [ Description ]
/*
  This class get data from api
*/

//----------------------------------------------- [ Import ]
import 'api.dart';
import 'consts.dart';

//----------------------------------------------- [ Model_Xray ]
class Model_Xray {
  //----------[Fields]
  String _url;
  var _api;
  String _model = const_model[const_model_list.xray_server]['api'];
  var _schema;
  var _items;
  var _view;
  var _edit;

//----------[Get]

//----------[Set]

//----------[Method]
  Model_Xray(this._url) {
    _api = new MyApi(_url);
    getSchema();
    //generate_items();
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

  generate_items() {
    for (var key in _schema.keys) {
      print('Key: $key');
      print('Value: ${_schema[key]}');
      print('------------');
    }
  }

  generate_view() {}
  generate_edit() {}
}
