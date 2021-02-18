import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String convertKitLandingPageSource = 'https://ashtonjones.ck.page/104a28c6e1';
  // String substackPublicationPageSource = 'https://insightowl.substack.com/welcome';

  static ValueKey convertKitLandingPageKey = ValueKey('convert_kit');
  // static ValueKey substackPublicationPageKey = ValueKey('substack');

  String currentSource;
  static ValueKey currentValueKey;

  @override
  void initState() {
    currentSource = convertKitLandingPageSource;
    currentValueKey = convertKitLandingPageKey;
    super.initState();
  }



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
              src: currentSource,
              key: currentValueKey,
              onLoaded: () {
                print('$currentValueKey: Loaded: $currentSource');
              },
            ),
          ),
        ],
      ),
    );
  }
}