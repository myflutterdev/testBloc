import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class BigpackState extends Equatable {
  BigpackState([Iterable props]) : super(props);

  /// Copy object for use in action
  BigpackState getStateCopy();
}

/// UnInitialized
class UnBigpackState extends BigpackState {
  @override
  String toString() => 'UnBigpackState';

  @override
  BigpackState getStateCopy() {
    return UnBigpackState();
  }
}

/// Initialized
class InBigpackState extends BigpackState {
  @override
  String toString() => 'InBigpackState';

  @override
  BigpackState getStateCopy() {
    return InBigpackState();
  }
}

class ErrorBigpackState extends BigpackState {
  final String errorMessage;

  ErrorBigpackState(this.errorMessage);
  
  @override
  String toString() => 'ErrorBigpackState';

  @override
  BigpackState getStateCopy() {
    return ErrorBigpackState(this.errorMessage);
  }
}
