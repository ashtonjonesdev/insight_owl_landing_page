
import 'package:flutter/material.dart';
import 'package:insight_owl_landing_page/styles/theme.dart';
import 'package:insight_owl_landing_page/ui/widgets/Home.dart';


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




