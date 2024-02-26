import 'package:mobx/mobx.dart';
part 'filter_checkbox_mobx.g.dart';


class FilterCheckbox = _FilterCheckboxBase with _$FilterCheckbox;

abstract class _FilterCheckboxBase with Store {
    ObservableList<String> checkboxList = ObservableList<String>();

  void addTypeToCheckboxList(String type) {
    if (!checkboxList.contains(type)) {
      checkboxList.add(type);
    }
  }

  void removeTypeToCheckboxList(String type) {
    checkboxList.remove(type);
  }
}
