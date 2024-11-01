import 'package:flutter/material.dart';

//----------------------------------------------- [ Description ]
/*

*/

//----------------------------------------------- [ Mac-Desktop ]
class MacDesktopDrawer extends StatelessWidget {
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
              'Mac-Desktop',
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

//----------------------------------------------- [ Mac-Tablet ]
class MacTabletDrawer extends StatelessWidget {
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
              'Mac-Tablet',
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

//----------------------------------------------- [ Mac-Mobile ]
class MacMobileDrawer extends StatelessWidget {
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
              'Mac-Mobile',
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

//----------------------------------------------- [ Linux-Desktop ]
class LinuxDesktopDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Text(
              'Linux-Desktop',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Linux'),
            onTap: () {
              Navigator.pushNamed(context, '/linux');
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

//----------------------------------------------- [ Linux-Tablet ]
class LinuxTabletDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: Text(
              'Linux-Tablet',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Linux'),
            onTap: () {
              Navigator.pushNamed(context, '/linux');
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

//----------------------------------------------- [ Linux-Mobile ]
class LinuxMobileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            child: Text(
              'Linux-Mobile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Linux'),
            onTap: () {
              Navigator.pushNamed(context, '/linux');
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

//----------------------------------------------- [ Windows-Desktop ]
class WindowsDesktopDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Text(
              'Windows-Desktop',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Windows'),
            onTap: () {
              Navigator.pushNamed(context, '/windows');
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

//----------------------------------------------- [ Windows-Tablet ]
class WindowsTabletDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
            child: Text(
              'Windows-Tablet',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Windows'),
            onTap: () {
              Navigator.pushNamed(context, '/windows');
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

//----------------------------------------------- [ Windows-Mobile ]
class WindowsMobileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
            child: Text(
              'Windows-Mobile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Windows'),
            onTap: () {
              Navigator.pushNamed(context, '/windows');
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

//----------------------------------------------- [ Chrome-Desktop ]
class ChromeDesktopDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
            ),
            child: Text(
              'Chrome-Desktop',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Chrome'),
            onTap: () {
              Navigator.pushNamed(context, '/chrome');
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

//----------------------------------------------- [ Chrome-Tablet ]
class ChromeTabletDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepOrange,
            ),
            child: Text(
              'Chrome-Tablet',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Chrome'),
            onTap: () {
              Navigator.pushNamed(context, '/chrome');
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

//----------------------------------------------- [ Chrome-Mobile ]
class ChromeMobileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
            ),
            child: Text(
              'Chrome-Mobile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Chrome'),
            onTap: () {
              Navigator.pushNamed(context, '/chrome');
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

//----------------------------------------------- [ iOS-Desktop ]
class IOSDesktopDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
            child: Text(
              'iOS-Desktop',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('iOS'),
            onTap: () {
              Navigator.pushNamed(context, '/ios');
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

//----------------------------------------------- [ iOS-Tablet ]
class IOSTabletDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
            child: Text(
              'iOS-Tablet',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('iOS'),
            onTap: () {
              Navigator.pushNamed(context, '/ios');
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

//----------------------------------------------- [ iOS-Mobile ]
class IOSMobileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Text(
              'iOS-Mobile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('iOS'),
            onTap: () {
              Navigator.pushNamed(context, '/ios');
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

//----------------------------------------------- [ Android-Desktop ]
class AndroidDesktopDrawer extends StatelessWidget {
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
              'Android-Desktop',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Android'),
            onTap: () {
              Navigator.pushNamed(context, '/android');
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

//----------------------------------------------- [ Android-Tablet ]
class AndroidTabletDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lightGreen,
            ),
            child: Text(
              'Android-Tablet',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Android'),
            onTap: () {
              Navigator.pushNamed(context, '/android');
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

//----------------------------------------------- [ Android-Mobile ]
class AndroidMobileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.greenAccent,
            ),
            child: Text(
              'Android-Mobile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Android'),
            onTap: () {
              Navigator.pushNamed(context, '/android');
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

//----------------------------------------------- [ Web-Desktop ]
class WebDesktopDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Text(
              'Web-Desktop',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Web'),
            onTap: () {
              Navigator.pushNamed(context, '/web');
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

//----------------------------------------------- [ Web-Tablet ]
class WebTabletDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Text(
              'Web-Tablet',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Web'),
            onTap: () {
              Navigator.pushNamed(context, '/web');
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

//----------------------------------------------- [ Web-Mobile ]
class WebMobileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Text(
              'Web-Mobile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Web'),
            onTap: () {
              Navigator.pushNamed(context, '/web');
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
