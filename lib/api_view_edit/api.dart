//----------------------------------------------- [ Description ]
/*
  This class get json data from api
*/

//----------------------------------------------- [ Import ]
import 'package:http/http.dart' as http;
import 'dart:convert';

//----------------------------------------------- [ MyApi ]
class MyApi {
  String url;

  MyApi(this.url);

  // Future<Map<String, dynamic>> getDataFromApi(String route) async {
  //   url = '${this.url}/${route}';
  //   final response = await http.get(Uri.parse(url));
  //   Map<String, dynamic> data = jsonDecode(response.body);
  //   return data;
  // }

  // Future getSchema(String model_name) async {
  //   var schema = await getDataFromApi('schema');
  //   var model = schema['components']['schemas'][model_name]['properties'];
  //   return model;
  // }

  // Future getItems(String model_name) async {
  //   var data = await getDataFromApi('${model_name}/items');
  //   return data;
  // }

  Future getItems(String model_name) async {
    print('--- MyApi : getItems : ${model_name}');

    Map<String, dynamic> data = {
      "version": "1.8.24",
      "config_url": "/usr/local/etc/xray",
      "api_host": "127.0.0.1",
      "api_port": 10085,
    };

    await Future.delayed(Duration(seconds: 2));

    return data;
  }
}
