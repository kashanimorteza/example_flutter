import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  String url =
      'http://0.0.0.0:8000/fd051ac1-e342-4631-968d-db3f19b575e7/schema';
  var data = await getData(url);
  print(data);
}

getData(String url) async {
  try {
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
