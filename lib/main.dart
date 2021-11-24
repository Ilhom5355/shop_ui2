import 'package:flutter/material.dart';
import 'package:shop_ui2/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.orange),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
