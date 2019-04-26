import 'package:testbloc_pro/bigpack/index.dart';

class BigpackProvider {
  final BigpackRepository _bigpackRepository = new BigpackRepository();

  BigpackProvider();

  void test() {
    this._bigpackRepository.test();
  }
}
