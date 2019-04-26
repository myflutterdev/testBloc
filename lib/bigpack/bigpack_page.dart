import 'package:flutter/material.dart';
import 'package:testbloc_pro/bigpack/index.dart';

class BigpackPage extends StatelessWidget {
  static const String routeName = "/bigpack";

  @override
  Widget build(BuildContext context) {
    var _bigpackBloc = new BigpackBloc();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bigpack"),
      ),
      body: new BigpackScreen(bigpackBloc: _bigpackBloc),
    );
  }
}
