import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Navigation Example',
      // Define initial route and named routes
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: AppDrawer(), // Adding the Drawer
      body: Center(
        child: Text('Welcome to the Home Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      drawer: AppDrawer(), // Drawer available on every page
      body: Center(
        child: Text('Welcome to Page 1', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      drawer: AppDrawer(), // Drawer available on every page
      body: Center(
        child: Text('Welcome to Page 2', style: TextStyle(fontSize: 24)),
      ),
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
              'Drawer Navigation',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/'); // Navigate to Home
            },
          ),
          ListTile(
            leading: Icon(Icons.pageview),
            title: Text('Page 1'),
            onTap: () {
              Navigator.pushNamed(context, '/page1'); // Navigate to Page 1
            },
          ),
          ListTile(
            leading: Icon(Icons.pages),
            title: Text('Page 2'),
            onTap: () {
              Navigator.pushNamed(context, '/page2'); // Navigate to Page 2
            },
          ),
        ],
      ),
    );
  }
}
