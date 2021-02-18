
import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';
import 'package:insight_owl_landing_page/styles/theme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insight Owl',
      theme: AppTheme.appThemeDataLight,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String src = 'https://ashtonjones.ck.page/104a28c6e1';

  static ValueKey key = ValueKey('key_0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 1,
            child: EasyWebView(
              webAllowFullScreen: true,
              src: src,
              key: key,
              onLoaded: () {
                print('$key: Loaded: $src');
              },
            ),
          ),
        ],
      ),
    );
  }
}




