//----------------------------------------------- [ Description ]
/*
  This class get json data from api
*/

//----------------------------------------------- [ Import ]
import 'package:flutter/material.dart';

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
