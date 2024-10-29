import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  String url =
      'http://0.0.0.0:8000/fd051ac1-e342-4631-968d-db3f19b575e7/schema';

  getData(url, (data) {
    if (data != null) {
      print(data);
    }
  });
}

void getData(String apiUrl, Function(dynamic) onResponse) {
  http.get(Uri.parse(apiUrl)).then((response) {
    if (response.statusCode == 200) {
      onResponse(json.decode(response.body));
    } else {
      onResponse(null);
    }
  }).catchError((error) {
    print('Error: $error');
    onResponse(null);
  });
}


  // Future<List<dynamic>> fetchApiOutput(String route) async {
  //   url = '${this.url}/${route}';
  //   final response = await http.get(Uri.parse(url));
  //   if (response.statusCode == 200) {
  //     return jsonDecode(response.body);
  //   } else {
  //     throw Exception('Failed to load data');
  //   }
  // }