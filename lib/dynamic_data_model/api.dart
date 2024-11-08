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

  Future<Map<String, dynamic>> getDataFromApi(String route) async {
    url = '${this.url}/${route}';
    final response = await http.get(Uri.parse(url));
    Map<String, dynamic> data = jsonDecode(response.body);
    return data;
  }

  Future getSchema(String model_name) async {
    var schema = await getDataFromApi('schema');
    var model = schema['components']['schemas'][model_name]['properties'];
    return model;
  }

  Future getItems(String model_name) async {
    var data = await getDataFromApi('${model_name}/items');
    return data;
  }
}
