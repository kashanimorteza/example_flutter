//----------------------------------------------- [ Description ]
/*
  This class get data from api
*/

//----------------------------------------------- [ Import ]
import 'package:flutter/material.dart';
import 'models.dart';

//----------------------------------------------- [ Provider ]
class Provider_Xray with ChangeNotifier {
//----------[Fields]
  var _url;
  var _model;
  var _view;
  var _edit;

//----------[Get]
  get view => _view;
  get edit => _edit;

//----------[Method]
  Provider_Xray(this._url) {
    print('--- Provider_Xray');
    _model = new Model_Xray(_url);
    Get_View();
  }

  void Get_View() {
    print('--- Get_View');
    _view = _model.generate_view();
    notifyListeners();
  }

  void Get_Edit() {
    print('--- Get_Edit');
    _edit = _model.generate_edit();
    notifyListeners();
  }
}
