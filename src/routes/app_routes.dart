import 'package:flutter/material.dart';
import '../modules/home/page/home_page.dart';
import '../modules/initial/page/initial_page.dart';

class AppRoutes {
  static const initial = '/';
  static const home = '/home';
  static const history = '/history'; // adicionar quando criar HistoryPage

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      initial: (context) => InitialPage(),
      home: (context) => HomePage(),
      // history: (context) => HistoryPage(), // opcional
    };
  }
}
