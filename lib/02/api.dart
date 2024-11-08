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

  getDataFromApi(String route) async {
    try {
      url = '${this.url}/${route}';
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        try {
          return jsonDecode(response.body);
        } catch (e) {
          return response.body;
        }
      } else {
        return 'Error: ${response.statusCode} - ${response.reasonPhrase}';
      }
    } catch (e) {
      return 'Exception occurred: $e';
    }
  }

  getSchema(String model_name) async {
    var schema = await getDataFromApi('schema');
    var model = schema['components']['schemas'][model_name]['properties'];
    return model;
  }
}
