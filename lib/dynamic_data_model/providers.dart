// import 'package:flutter/material.dart';
// import 'consts.dart';

// //----------------------------------------------- [ Provider ]
// class Provider_Page with ChangeNotifier {
// //----------[Fields]
//   const_page_list _page = const_page_list.dashboard;
//   var _title = const_page[const_page_list.dashboard]['title'];
//   var _cls = const_page[const_page_list.dashboard]['cls'];

// //----------[Get]
//   get page => _page;
//   get title => _title;
//   get cls => _cls;

// //----------[Method]
//   Provider_Page() {
//     print('--- Provider_Page');
//     update(_page);
//   }

//   void update(const_page_list page) {
//     print('--- Provider_Page.update()');
//     _page = page;
//     _title = const_page[_page]['title'];
//     _cls = const_page[_page]['cls'];
//     notifyListeners();
//   }
// }
