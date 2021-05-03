import 'package:flutter/material.dart';

class Chargement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new TextePhrase("Chargement ...", couleur : Colors.black),
    );
  }
}

/* Widget : de type class ---- ---- ---- ---- */

class TextePhrase extends Text {
  TextePhrase(
    String data, {
    couleur: Colors.black,
    alignLe: TextAlign.center,
    tailleFont: 29.0,
  }) : super(
          data,
          textAlign: alignLe,
          style: new TextStyle(
            color : couleur,
            fontSize: tailleFont,
          ),
        );
}
