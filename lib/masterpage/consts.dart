import 'pages.dart';

//----------------------------------------------- [ Const ]
enum const_page_list { dashboard, config }

Map<dynamic, dynamic> const_page = {
  //----------Dashboard
  const_page_list.dashboard: {
    'title': 'Dashboard',
    'cls': Page_Dashboard(),
  },
  //----------Config
  const_page_list.config: {
    'title': 'Config',
    'cls': Page_Config(),
  },
};
