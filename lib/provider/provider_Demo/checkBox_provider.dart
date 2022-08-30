// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../provider_model/name_model.dart';

class CheckBoxProvider extends ChangeNotifier {
  // ---------------------------------List of name------------------------------------//
  List<Name> nameList = [
    Name(name: "Rensi"),
    Name(name: "Nirali"),
    Name(name: "Prinsi"),
    Name(name: "Kinju"),
  ];

  void add(Name newCountry) {
    nameList.add(newCountry);
    notifyListeners();
  }

  void selectCountry(bool d, int index) {
    nameList[index].value = !nameList[index].value;
    notifyListeners();
  }
}
