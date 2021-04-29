import 'package:flutter/material.dart';
import 'dart:async';
import 'package:rss_app_flutter/models/parser.dart'; // importation relative
import 'dart:convert';
// ------
class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}
// ------
class _HomeState extends State<Home> {
  /* LES VARIABLES DE FLUX */


  
  /* LES VARIABLES DE FLUX */

  @override
  void initState(){
    super.initState();
    attenteResParse();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        backgroundColor: Colors.purpleAccent,
        title: new Text(
          "App de flux RSS",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
    );
  }

  // Fonction Future : ()
  Future <void> attenteResParse () async {
    
  }
}