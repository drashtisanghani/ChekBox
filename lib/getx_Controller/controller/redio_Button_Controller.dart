// ignore_for_file: file_names

import 'package:get/get.dart';

class RadioController extends GetxController {
  //-----------------------gender variable-----------------------//
  var gender = "".obs;

  var readingCheckBox = false.obs;
// ---------------------selectFunction---------//
  onChangeGender(var select) {
    gender.value = select;
  }
}
