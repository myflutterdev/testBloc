import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:testbloc_pro/bigpack/index.dart';

class BigpackBloc extends Bloc<BigpackEvent, BigpackState> {
  static final BigpackBloc _bigpackBlocSingleton = new BigpackBloc._internal();
  factory BigpackBloc() {
    return _bigpackBlocSingleton;
  }
  BigpackBloc._internal();
  
  BigpackState get initialState => new UnBigpackState();

  @override
  Stream<BigpackState> mapEventToState(
    BigpackEvent event,
  ) async* {
    try {
      yield await event.applyAsync(currentState: currentState, bloc: this);
    } catch (_) {
      print('BigpackBloc ' + _?.toString());
      yield currentState;
    }
  }
}
