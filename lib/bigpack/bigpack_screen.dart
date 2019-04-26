import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testbloc_pro/bigpack/index.dart';

class BigpackScreen extends StatefulWidget {
  const BigpackScreen({
    Key key,
    @required BigpackBloc bigpackBloc,
  })  : _bigpackBloc = bigpackBloc,
        super(key: key);

  final BigpackBloc _bigpackBloc;

  @override
  BigpackScreenState createState() {
    return new BigpackScreenState(_bigpackBloc);
  }
}

class BigpackScreenState extends State<BigpackScreen> {
  final BigpackBloc _bigpackBloc;
  BigpackScreenState(this._bigpackBloc);

  @override
  void initState() {
    super.initState();
    this._bigpackBloc.dispatch(LoadBigpackEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BigpackEvent, BigpackState>(
        bloc: widget._bigpackBloc,
        builder: (
          BuildContext context,
          BigpackState currentState,
        ) {
          if (currentState is UnBigpackState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (currentState is ErrorBigpackState) {
            return new Container(
              child: new Center(
              child: new Text(currentState.errorMessage ?? 'Error' ),
            ));
          }
          return new Container(
              child: new Center(
            child: new Text("В разработке"),
          ));
        });
  }
}
