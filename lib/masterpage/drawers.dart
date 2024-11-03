import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers.dart';
import 'consts.dart';

//----------------------------------------------- [ Drawer ]
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prv_page = Provider.of<Provider_Page>(context, listen: false);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Masterpage',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(const_page[const_page_list.dashboard]['title']),
            onTap: () {
              prv_page.update(const_page_list.dashboard);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(const_page[const_page_list.config]['title']),
            onTap: () {
              prv_page.update(const_page_list.config);
            },
          ),
        ],
      ),
    );
  }
}
