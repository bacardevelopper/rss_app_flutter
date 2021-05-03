import 'package:flutter/material.dart';
import 'package:webfeed/domain/rss_feed.dart';

class Liste extends StatefulWidget {
  var feed;
  
  @override
  _ListeState createState() => new _ListeState();
  // contsructor
  Liste(feed) {
    this.feed = feed;
  }
}

class _ListeState extends State<Liste> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: widget.feed.items.length,
      itemBuilder: (context, i) {
        var item = widget.feed.items[i];
        return new Container(
          padding: EdgeInsets.all(10.0),
          child : new Card(
            elevation: 10.0,
            child : new Column(
              children: <Widget>[
                new Text(item.title),
              ],
            ),
          ),
        );
      },
    );
  }
}
