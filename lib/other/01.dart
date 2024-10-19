import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var myListDaya = <WordPair>[];
  var current = WordPair.random();
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  var selectedIndex = 0;

  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = HomePage();
        break;
      case 1:
        page = FavoritPage();
        break;
      case 2:
        page = ListViewPage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return Scaffold(
      body: Row(
        children: [
          SafeArea(
            child: NavigationRail(
              extended: true,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Dashboard'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.favorite),
                  label: Text('Xray'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.list),
                  label: Text('Domain'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.list),
                  label: Text('Domain'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.list),
                  label: Text('Domain'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.list),
                  label: Text('Domain'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.list),
                  label: Text('Domain'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.list),
                  label: Text('Domain'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.list),
                  label: Text('Domain'),
                ),
              ],
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                print('selected: $value');
                setState(() {
                  selectedIndex = value;
                });
              },
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: page,
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page'),
    );
  }
}

class FavoritPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorit Page'),
    );
  }
}

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('1'),
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('2'),
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('3'),
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('1'),
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('2'),
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('3'),
        ),
      ],
    );
  }
}
