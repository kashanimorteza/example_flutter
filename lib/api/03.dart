import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  String url = 'http://0.0.0.0:8000/fd051ac1-e342-4631-968d-db3f19b575e7';
  MyApi myapi = MyApi(url = url);
  var data = await myapi.getFields('model_xray_server');
  print(data);
}

class MyApi {
  String url;

  MyApi(this.url);

  fetchApiOutput(String route) async {
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

  getSchema() async {
    var schema = await fetchApiOutput('schema');
    return await schema;
  }

  getFields(String model_name) async {
    var schema = await getSchema();
    var model = schema['components']['schemas'][model_name]['properties'];
    return await model;
  }
}
