//----------------------------------------------- [ Import ]
import 'package:flutter/material.dart';

//----------------------------------------------- [ Desktop ]
class DrawerDesktop extends StatelessWidget {
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
              'Desktop',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Desktop'),
            onTap: () {
              print('Desktop');
            },
          ),
        ],
      ),
    );
  }
}

//----------------------------------------------- [ Tablet ]
class DrawerTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text(
              'Tablet',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Tablet'),
            onTap: () {
              print('Tablet');
            },
          ),
        ],
      ),
    );
  }
}

//----------------------------------------------- [ Mobile ]
class DrawerMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Text(
              'Mobile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Mobile'),
            onTap: () {
              print('Mobile');
            },
          ),
        ],
      ),
    );
  }
}
