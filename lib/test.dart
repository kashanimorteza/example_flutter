import 'dart:io' show Platform;
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Determine which theme to use based on the OS
    ThemeData theme;
    if (Platform.isAndroid) {
      theme = ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
    } else if (Platform.isIOS) {
      theme = ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
    } else {
      // Default theme for other platforms (e.g., desktop)
      theme = ThemeData.dark();
    }

    return MaterialApp(
      title: 'Flutter Platform Demo',
      theme: theme,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isTablet = MediaQuery.of(context).size.shortestSide > 600;

    return Scaffold(
      appBar: AppBar(
        title: Text('Platform Specific UI'),
      ),
      drawer: _buildDrawer(context, isTablet),
      body: Center(
        child: Text('Hello, Flutter!'),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context, bool isTablet) {
    // Customize drawer based on device type (phone or tablet)
    if (isTablet) {
      return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Tablet Drawer'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Handle Home Tap
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Handle Settings Tap
              },
            ),
          ],
        ),
      );
    } else {
      return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Phone Drawer'),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Handle Home Tap
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Handle Profile Tap
              },
            ),
          ],
        ),
      );
    }
  }
}
