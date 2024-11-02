import 'package:flutter/material.dart';

//----------------------------------------------- [ Description ]
/*

*/

//----------------------------------------------- [ DesktopDrawer ]
class DesktopDrawer extends StatelessWidget {
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
            title: Text('Mac'),
            onTap: () {
              Navigator.pushNamed(context, '/mac');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Desktop'),
            onTap: () {
              Navigator.pushNamed(context, '/desktop');
            },
          ),
        ],
      ),
    );
  }
}

//----------------------------------------------- [ TabletDrawer ]
class TabletDrawer extends StatelessWidget {
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
            title: Text('Mac'),
            onTap: () {
              Navigator.pushNamed(context, '/mac');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Tablet'),
            onTap: () {
              Navigator.pushNamed(context, '/tablet');
            },
          ),
        ],
      ),
    );
  }
}

//----------------------------------------------- [ MobileDrawer ]
class MobileDrawer extends StatelessWidget {
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
            title: Text('Mac'),
            onTap: () {
              Navigator.pushNamed(context, '/mac');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Mobile'),
            onTap: () {
              Navigator.pushNamed(context, '/mobile');
            },
          ),
        ],
      ),
    );
  }
}
