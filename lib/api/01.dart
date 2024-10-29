import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  var url = 'http://0.0.0.0:8000/fd051ac1-e342-4631-968d-db3f19b575e7';
  var route = 'schema';
  url = '${url}/${route}';
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
