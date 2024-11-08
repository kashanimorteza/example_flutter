import 'package:flutter/material.dart';

class DynamicTable extends StatelessWidget {
  final List<Map<String, String>> data = [
    {"Title": "Name", "Value": "Alice"},
    {"Title": "Age", "Value": "25"},
    {"Title": "Occupation", "Value": "Engineer"},
    {"Title": "City", "Value": "New York"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(), // Adds border to the table
          children: [
            TableRow(
              decoration: BoxDecoration(color: Colors.grey[300]),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Title",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Value",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            // for (var item in data)
            //   TableRow(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Text(item["Title"] ?? ""),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Text(item["Value"] ?? ""),
            //       ),
            //     ],
            //   ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DynamicTable(),
  ));
}
