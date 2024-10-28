import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  MyApi api = MyApi();

  String url =
      'http://0.0.0.0:8000/fd051ac1-e342-4631-968d-db3f19b575e7/xray_server/items';

  api.getApiData(url);
}

class MyApi {
  Future<void> getApiData(String apiUrl) async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print('API Data: $data');
      } else {
        print('Failed to load data. Status Code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
