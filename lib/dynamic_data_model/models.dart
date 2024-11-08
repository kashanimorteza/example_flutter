//----------------------------------------------- [ Description ]
/*
  This class get data from api
*/

//----------------------------------------------- [ Import ]
import 'package:flutter/material.dart';
import 'api.dart';
import 'consts.dart';

//----------------------------------------------- [ Model_Xray ]
class Model_Xray {
  //----------[Fields]
  var _model = const_model[const_model_list.xray_server]['api'];
  var _url;
  var _api;

  var _data;

//----------[Get]

//----------[Set]

//----------[Method]
  Model_Xray(this._url) {
    _api = new MyApi(_url);
  }

  Future generate_view() async {
    _data = await _api.getItems(_model);

    for (var entry in _data.entries) {
      print('Key: ${entry.key}, Value: ${entry.value}');
    }

    var data = Scaffold(
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
            for (var item in _data.entries)
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(item["Key"] ?? ""),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(item["Value"] ?? ""),
                  ),
                ],
              ),
          ],
        ),
      ),
    );

    return data;
  }

  List<DataRow> _generateRow() {
    List<DataRow> rows = [];

    for (var entry in _data.entries) {
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

  List<DataColumn> _generateColumn() {
    List<DataColumn> rows = [];

    for (var entry in _data.entries) {
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
