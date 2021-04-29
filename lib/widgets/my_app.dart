import 'package:flutter/material.dart';
import 'home.dart';
/* ---- ** ---- */
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Home(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}