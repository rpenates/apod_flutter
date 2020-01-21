import "package:flutter/material.dart";
import "../models/Apod.dart";
import "../blocs/ApodBloc.dart";

class ApodView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      bloc.fetchApod();
      return Scaffold(
          appBar: AppBar(
              title: Text("APOD"),
          ),
          body: StreamBuilder(
              stream: bloc.currentApod,
              builder: (context, AsyncSnapshot<Apod> snapshot) {
                  if (snapshot.hasData) {
                      return buildView(snapshot);
                  } else if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                  } else {
                      return Center (child: CircularProgressIndicator());
                  }
              },
          )
      );
  }
}

Widget buildView (AsyncSnapshot<Apod> snapshot) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(snapshot.data.title),
        Text(snapshot.data.explanation)
      ],);
}