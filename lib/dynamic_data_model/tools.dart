//----------------------------------------------- [ Description ]
/*
  This class get json data from api
*/

//----------------------------------------------- [ Import ]
import 'package:flutter/material.dart';

AppBar generate_AppBar(String title, Color backgroundColor, Color foregroundColor) {
  AppBar obj = AppBar(
    title: Text(title),
    backgroundColor: backgroundColor,
    foregroundColor: foregroundColor,
  );
  return obj;
}

ListView generate_ListView(Map<String, dynamic> data) {
  ListView obj = ListView.separated(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: data.length,
    separatorBuilder: (context, index) => Divider(
      height: 1,
      color: Colors.grey.shade300,
    ),
    itemBuilder: (context, index) {
      final entry = data.entries.elementAt(index);
      return Row(
        children: [
          // Header
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(12),
              color: Colors.grey.shade50,
              child: Text(
                entry.key,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          // Value
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(12),
              child: Text(
                entry.value.toString(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
  return obj;
}

//----------------------------------------------- [ Create_Table_ROW ]
TableRow Create_Table_ROW(String title, String hint) {
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
