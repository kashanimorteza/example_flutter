//----------------------------------------------- [ Description ]
/*
  This class get data from api
*/

//----------------------------------------------- [ Import ]
import 'package:flutter/material.dart';
import 'models.dart';
import 'consts.dart';

//----------------------------------------------- [ Provider ]
class Provider_Xray with ChangeNotifier {
//----------[Fields]
  var _context;
  var _url;
  var _model;
  var _view;
  var _edit;
  var _mode = const_page_mode.view;

//----------[Get]
  get context => _context;
  get view => _view;
  get edit => _edit;

//----------[Set]
  set context(value) {
    print('--- Provider_Xray : set context');
    _context = value;
    _model = new Model_Xray(context: _context, url: _url);
    Get_View();
  }

  set mode(const_page_mode value) {
    print('--- Provider_Xray : set mode');
    _mode = value;
    _mode == const_page_mode.view ? Get_View() : Get_Edit();
  }

//----------[Contractor]
  Provider_Xray({
    required String url,
  }) {
    print('--- Provider_Xray : Contractor');
    _url = url;
  }

//----------[Get_View]
  void Get_View() {
    print('--- Provider_Xray : Get_View');
    _model.view().then((data) {
      _view = data;
    }).catchError((error) {
      print('error');
    }).whenComplete(() {
      notifyListeners();
    });
  }

  //----------[Get_View]
  void Get_Edit() {
    print('--- Provider_Xray : Get_Edit');
    _model.edit().then((data) {
      _view = data;
    }).catchError((error) {
      print('error');
    }).whenComplete(() {
      notifyListeners();
    });
  }
}
