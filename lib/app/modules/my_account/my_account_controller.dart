import 'package:mobx/mobx.dart';

part 'my_account_controller.g.dart';

class MyAccountController = _MyAccountControllerBase with _$MyAccountController;

abstract class _MyAccountControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
