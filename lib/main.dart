import 'package:app_flutter_college/demo/guide/splash_page.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_widget.dart';

import 'package:app_flutter_college/demo/routes.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bottomNavigationBar',
      /**
       * 去除顶部debug图标
       */
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: LeadPage(),
      onGenerateRoute: onGenerateRoute,
    );
  }
}