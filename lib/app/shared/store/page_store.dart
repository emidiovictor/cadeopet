import 'package:mobx/mobx.dart';
part 'page_store.g.dart';

class PageStore = _PageStoreBase with _$PageStore;

abstract class _PageStoreBase with Store {
  @observable
  int selectedPage = 0;
  @action
  setSelectedPage(int value) => selectedPage = value;
}
