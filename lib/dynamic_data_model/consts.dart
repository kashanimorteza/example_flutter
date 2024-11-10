//----------------------------------------------- [ Description ]
/*
  This class serves varibale
*/

//----------------------------------------------- [ Const ]
enum const_model_list { xray_server }

enum const_page_mode { view, edit }

//----------------------------------------------- [ Map ]
Map<dynamic, dynamic> const_model = {
  //----------xray_server
  const_model_list.xray_server: {
    'title': 'Xray Server',
    'api': 'xray_server',
  },
};
