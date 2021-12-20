import 'package:mobx/mobx.dart';

part 'activity_store.g.dart';

class ActivityStore = _ActivityStoreBase with _$ActivityStore;

abstract class _ActivityStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
