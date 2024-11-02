import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Master Page with Drawer',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/pageOne': (context) => PageOne(),
        '/pageTwo': (context) => PageTwo(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Master Page'),
      ),
      drawer: AppDrawer(), // Drawer for navigation
      body: Center(
        child:
            Text('Welcome to the Master Page!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

// Custom Drawer Widget for Navigation
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
              'Navigation Menu',
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
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.pageview),
            title: Text('Page One'),
            onTap: () {
              Navigator.pushNamed(context, '/pageOne');
            },
          ),
          ListTile(
            leading: Icon(Icons.pages),
            title: Text('Page Two'),
            onTap: () {
              Navigator.pushNamed(context, '/pageTwo');
            },
          ),
        ],
      ),
    );
  }
}

// Page One
class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      drawer: AppDrawer(), // Drawer available on every page
      body: Center(
        child: Text('This is Page One!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

// Page Two
class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      drawer: AppDrawer(), // Drawer available on every page
      body: Center(
        child: Text('This is Page Two!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
