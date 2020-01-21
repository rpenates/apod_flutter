import "package:flutter/material.dart";
import "package:apod_flutter/ui/ApodView.dart";

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: ApodView(),
      )
    );
  }

}