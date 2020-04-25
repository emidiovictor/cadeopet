import 'package:mobx/mobx.dart';

part 'base_controller.g.dart';

class BaseController = _BaseControllerBase with _$BaseController;

abstract class _BaseControllerBase with Store {
  @observable
  int selectedPage = 0;
  @action
  setSelectedPage(int value) => selectedPage = value;
}
