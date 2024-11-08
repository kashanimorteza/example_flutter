import 'package:flutter/material.dart';

class TableWithTextInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Table(
        columnWidths: {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(2),
        },
        border: TableBorder.all(color: Colors.black),
        children: [
          _buildTableRow('Version', 'Enter version'),
          _buildTableRow('Config URL', 'Enter config URL'),
          _buildTableRow('API Host', 'Enter API host'),
          _buildTableRow('API Port', 'Enter API port'),
        ],
      ),
    );
  }

  TableRow _buildTableRow(String title, String hint) {
    final TextEditingController _controller = TextEditingController(text: title);

    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: hint,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TableWithTextInputWidget(),
  ));
}
