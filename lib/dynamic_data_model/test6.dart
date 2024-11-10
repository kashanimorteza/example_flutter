import 'package:flutter/material.dart';

class XrayConfig {
  String version;
  String configUrl;
  String apiHost;
  int apiPort;

  XrayConfig({
    required this.version,
    required this.configUrl,
    required this.apiHost,
    required this.apiPort,
  });

  // Factory method to create an instance from a JSON map
  factory XrayConfig.fromJson(Map<String, dynamic> json) {
    return XrayConfig(
      version: json['version'] as String,
      configUrl: json['config_url'] as String,
      apiHost: json['api_host'] as String,
      apiPort: json['api_port'] as int,
    );
  }

  // Method to convert an instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'version': version,
      'config_url': configUrl,
      'api_host': apiHost,
      'api_port': apiPort,
    };
  }
}

class XrayConfigWidget extends StatefulWidget {
  final XrayConfig config;

  XrayConfigWidget({required this.config});

  @override
  _XrayConfigWidgetState createState() => _XrayConfigWidgetState();
}

class _XrayConfigWidgetState extends State<XrayConfigWidget> {
  late TextEditingController _versionController;
  late TextEditingController _configUrlController;
  late TextEditingController _apiHostController;
  late TextEditingController _apiPortController;

  @override
  void initState() {
    super.initState();
    // Initialize controllers with the data from the config
    _versionController = TextEditingController(text: widget.config.version);
    _configUrlController = TextEditingController(text: widget.config.configUrl);
    _apiHostController = TextEditingController(text: widget.config.apiHost);
    _apiPortController = TextEditingController(text: widget.config.apiPort.toString());
  }

  @override
  void dispose() {
    // Dispose of the controllers when no longer needed
    _versionController.dispose();
    _configUrlController.dispose();
    _apiHostController.dispose();
    _apiPortController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xray Config Editor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextField('Version', _versionController),
            SizedBox(height: 10),
            _buildTextField('Config URL', _configUrlController),
            SizedBox(height: 10),
            _buildTextField('API Host', _apiHostController),
            SizedBox(height: 10),
            _buildTextField('API Port', _apiPortController, isNumeric: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save changes or send updated data back to the server
                XrayConfig updatedConfig = XrayConfig(
                  version: _versionController.text,
                  configUrl: _configUrlController.text,
                  apiHost: _apiHostController.text,
                  apiPort: int.tryParse(_apiPortController.text) ?? 0,
                );
                // Do something with updatedConfig, e.g., send it to an API
                print(updatedConfig.toJson());
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
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

void main() {
  runApp(MaterialApp(
    home: XrayConfigWidget(
      config: XrayConfig(
        version: '1.8.13',
        configUrl: '/usr/local/etc/xray',
        apiHost: '127.0.0.1',
        apiPort: 10085,
      ),
    ),
  ));
}
