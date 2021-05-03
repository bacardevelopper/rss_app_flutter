import 'package:flutter/material.dart';
import 'dart:async';
import 'package:rss_app_flutter/models/parser.dart'; // importation relative
import 'package:webfeed/webfeed.dart';
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
  var leTitre;
  var laDesc;
  var lien;
  RssFeed feed;
  List data;
  /* LES VARIABLES DE FLUX */

  @override
  void initState() {
    super.initState();
    attenteResParse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text(
          "Résumé info Mayotte 1ere",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontStyle: FontStyle.italic, color: Colors.yellowAccent),
        ),
        centerTitle: true,
      ),
    );
  }

  // Fonction Future : ()
  Future attenteResParse() async {
    RssFeed recu = await Parser().chargerRss();
    if (recu != null) {
      setState(() {
        feed = recu;
        data = feed.items; /* (array de donnée = data[0].title) */
        leTitre = data[0].title;
        laDesc = data[0].description;
        lien = data[0].link;
        print(feed.items.length);

        data.forEach((element) {
          print("element");
          print("titre : "+element.title);
          print("description : "+element.description.toString());
          print("lien "+element.link);
        });
      });
    }
  }


}
