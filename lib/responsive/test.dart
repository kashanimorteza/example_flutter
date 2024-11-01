import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenSizeProvider with ChangeNotifier {
  bool isMobile = false;
  bool isTablet = false;
  bool isDesktop = false;

  void updateScreenSize(double width) {
    if (width < 600) {
      isMobile = true;
      isTablet = false;
      isDesktop = false;
    } else if (width >= 600 && width < 1200) {
      isMobile = false;
      isTablet = true;
      isDesktop = false;
    } else {
      isMobile = false;
      isTablet = false;
      isDesktop = true;
    }
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ScreenSizeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSizeProvider =
        Provider.of<ScreenSizeProvider>(context, listen: false);

    return LayoutBuilder(
      builder: (context, constraints) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          screenSizeProvider.updateScreenSize(constraints.maxWidth);
        });

        return Scaffold(
          appBar: AppBar(
            title: Text('Screen Size Provider Example'),
          ),
          body: Consumer<ScreenSizeProvider>(
            builder: (context, screenSizeProvider, child) {
              String deviceType = screenSizeProvider.isMobile
                  ? 'Mobile'
                  : screenSizeProvider.isTablet
                      ? 'Tablet'
                      : 'Desktop';
              return Center(
                child: Text('Current Device Type: $deviceType'),
              );
            },
          ),
        );
      },
    );
  }
}
