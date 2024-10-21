import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer',
      // Define initial route and named routes
      initialRoute: '/',
      routes: {
        '/': (context) => Dashboard(),
        '/config': (context) => Config(),
      },
    );
  }
}

// Drawer widget that will appear on all pages
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'MKVPN',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.pushNamed(context, '/'); // Navigate to Home
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Config'),
            onTap: () {
              Navigator.pushNamed(context, '/config'); // Navigate to Page 1
            },
          ),
        ],
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: AppDrawer(), // Adding the Drawer
      body: Center(
        child: Text('Welcome to the Dashboard', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class Config extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Config'),
      ),
      drawer: AppDrawer(), // Drawer available on every page
      body: Center(
        child: Text('Welcome to Config', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
