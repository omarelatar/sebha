import 'package:flutter/material.dart';

import 'objects/screens/taspeeh.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        fontFamily: 'ElMessiri',
      ),
      home: const SephaScreen(),
    );
  }
}
