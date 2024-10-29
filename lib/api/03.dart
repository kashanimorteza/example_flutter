import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  var url = 'http://0.0.0.0:8000/fd051ac1-e342-4631-968d-db3f19b575e7';
  var route = 'schema';
  url = '${url}/${route}';
  var data = await getData(url);
  print(data);
}

Future<Map<String, dynamic>> getData(String url) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load data');
  }
}
