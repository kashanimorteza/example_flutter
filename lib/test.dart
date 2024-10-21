import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageXray(),
    );
  }
}

class MyApi {
  Future<Map<String, dynamic>> getApiData(String apiUrl) async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data;
      } else {
        throw Exception(
            'Failed to load data. Status Code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error occurred: $e');
    }
  }
}

class PageXray extends StatefulWidget {
  @override
  _PageXrayState createState() => _PageXrayState();
}

class _PageXrayState extends State<PageXray> {
  late Future<Map<String, dynamic>> _apiData;

  @override
  void initState() {
    super.initState();
    String url =
        'http://0.0.0.0:8000/fd051ac1-e342-4631-968d-db3f19b575e7/xray/server/list';
    _apiData = MyApi().getApiData(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Data List'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _apiData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final data = snapshot.data!;
            return ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                ListTile(
                  title: Text('Version: ${data["version"]}',
                      style: TextStyle(fontSize: 20)),
                ),
                ListTile(
                  title: Text('Config URL: ${data["config_url"]}',
                      style: TextStyle(fontSize: 20)),
                ),
                ListTile(
                  title: Text('API Host: ${data["api_host"]}',
                      style: TextStyle(fontSize: 20)),
                ),
                ListTile(
                  title: Text('API Port: ${data["api_port"]}',
                      style: TextStyle(fontSize: 20)),
                ),
              ],
            );
          } else {
            return Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
