import 'dart:async';
import 'package:testbloc_pro/bigpack/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class BigpackEvent {
  Future<BigpackState> applyAsync(
      {BigpackState currentState, BigpackBloc bloc});
  final BigpackProvider _bigpackProvider = new BigpackProvider();
}

class LoadBigpackEvent extends BigpackEvent {
  @override
  String toString() => 'LoadBigpackEvent';

  @override
  Future<BigpackState> applyAsync(
      {BigpackState currentState, BigpackBloc bloc}) async {
    try {
      await Future.delayed(new Duration(seconds: 2));
      this._bigpackProvider.test();
      return new InBigpackState();
    } catch (_) {
      print('LoadBigpackEvent ' + _?.toString());
      return new ErrorBigpackState(_?.toString());
    }
  }
}
