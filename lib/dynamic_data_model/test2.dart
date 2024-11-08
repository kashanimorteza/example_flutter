import 'package:flutter/material.dart';

class DynamicDataTableWidget extends StatefulWidget {
  @override
  _DynamicDataTableWidgetState createState() => _DynamicDataTableWidgetState();
}

class _DynamicDataTableWidgetState extends State<DynamicDataTableWidget> {
  Map<String, dynamic> apiData = {};
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  // Mock method to simulate fetching data from an API
  void fetchData() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay

    // Example dynamic data from API
    apiData = {
      'version': {'type': 'string', 'title': 'Version', 'default': '1.8.13'},
      'config_url': {'type': 'string', 'title': 'Config URL', 'default': '/usr/local/etc/xray'},
      'api_host': {'type': 'string', 'title': 'API Host', 'default': '127.0.0.1'},
      'api_port': {'type': 'integer', 'title': 'API Port', 'default': 10085},
    };

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic API Data Table'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: _generateDynamicColumns(),
                rows: _generateDynamicRowsWithForLoop(),
              ),
            ),
    );
  }

  // Generate dynamic columns from the keys of the first entry in the map
  List<DataColumn> _generateDynamicColumns() {
    if (apiData.isEmpty) {
      return [];
    }

    // Getting column names dynamically from the first value of the map
    final firstValue = apiData.values.first;
    List<String> columnKeys = firstValue.keys.toList();

    // Adding a Key column manually since it's the identifier for each row
    return [
      DataColumn(label: Text('Key')),
      ...columnKeys.map((key) => DataColumn(label: Text(key))),
    ];
  }

  // Generate dynamic rows using a for loop
  List<DataRow> _generateDynamicRowsWithForLoop() {
    List<DataRow> rows = [];

    for (var entry in apiData.entries) {
      final key = entry.key;
      final value = entry.value;

      List<DataCell> cells = [
        DataCell(Text(key)),
      ];

      for (var subEntry in value.entries) {
        cells.add(DataCell(Text(subEntry.value.toString())));
      }

      rows.add(DataRow(cells: cells));
    }

    return rows;
  }
}

void main() {
  runApp(MaterialApp(
    home: DynamicDataTableWidget(),
  ));
}
