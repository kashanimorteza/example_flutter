//----------------------------------------------- [ Description ]
/*
  This class get data from api
*/

//----------------------------------------------- [ Import ]
import 'package:flutter/material.dart';
import 'package:app_state_manager/api_view_edit/providers.dart';
import 'package:provider/provider.dart';
import 'api.dart';
import 'consts.dart';
import 'tools.dart';

//----------------------------------------------- [ Model ]
class Model {
  String version;
  String config_url;
  String api_host;
  int api_port;

  Model({
    required this.version,
    required this.config_url,
    required this.api_host,
    required this.api_port,
  });
}

//----------------------------------------------- [ Model_Xray ]
class Model_Xray {
  //----------[Fields]
  var _context;
  var _model = const_model[const_model_list.xray_server]['api'];
  String _title = const_model[const_model_list.xray_server]['title'];
  var _url;
  var _api;
  var _data;

//----------[Get]

//----------[Set]

//----------[Contracture]
  Model_Xray({
    required context,
    required url,
  }) {
    print('--- Model_Xray : Contractor');
    _context = context;
    _url = url;
    _api = new MyApi(_url);
  }

//----------[View]
  Future<Widget> view() async {
    print('--- Model_Xray : view');

    AppBar My_AppBar = generate_AppBar(_title, Colors.blue, Colors.white);
    _data = await _api.getItems(_model);

    var obj = Scaffold(
      appBar: My_AppBar,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DataTable(
              columns: [
                DataColumn(
                  label: Text(
                    'Field',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Value',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
              rows: _buildDataRows(_data),
            ),
            ElevatedButton(
              onPressed: () {
                var prv_xray = Provider.of<Provider_Xray>(_context, listen: false);
                prv_xray.mode = const_page_mode.edit;
              },
              child: Text('Edit'),
            ),
          ],
        ),
      ),
    );
    return obj;
  }

//----------[View]
  Future<Widget> edit() async {
    print('--- Model_Xray : edit');

    _data = await _api.getItems(_model);

    TextEditingController _version_Controller = TextEditingController(text: _data['version']);
    TextEditingController _config_url_Controller = TextEditingController(text: _data['config_url']);
    TextEditingController _api_host_Controller = TextEditingController(text: _data['api_host']);
    TextEditingController _api_port_Controller = TextEditingController(text: _data['api_port'].toString());

    AppBar My_AppBar = generate_AppBar(_title, Colors.blue, Colors.white);

    var obj = Scaffold(
      appBar: My_AppBar,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextField('version', _version_Controller),
            SizedBox(height: 10),
            _buildTextField('config_url', _config_url_Controller),
            SizedBox(height: 10),
            _buildTextField('api_host', _api_host_Controller),
            SizedBox(height: 10),
            _buildTextField('api_port', _api_port_Controller, isNumeric: true),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                var prv_xray = Provider.of<Provider_Xray>(_context, listen: false);
                prv_xray.mode = const_page_mode.view;
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
    return obj;
  }

  Widget _buildTextField(String label, TextEditingController controller, {bool isNumeric = false}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
    );
  }
}

List<DataRow> _buildDataRows(Map<String, dynamic> data) {
  return data.entries.map((entry) {
    return DataRow(
      cells: [
        DataCell(Text(entry.key)),
        DataCell(Text(entry.value.toString())),
      ],
    );
  }).toList();
}
