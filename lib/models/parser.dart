import 'package:webfeed/webfeed.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

// class pour parser ---
class Parser {
  final urlMayotte = "https://la1ere.francetvinfo.fr/mayotte/actu/rss";
  Future chargerRss() async {
    final reponse = await http.get(Uri.parse(urlMayotte));
    if(reponse.statusCode == 200){
      print("Reussit : "+reponse.statusCode.toString());
      return RssFeed.parse(reponse.body);
    }else {
      print("Error : "+reponse.statusCode.toString());
      return RssFeed.parse(reponse.body);
    }
  }
}
