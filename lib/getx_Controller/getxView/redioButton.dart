// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/redio_Button_Controller.dart';

class RadioButton_Get extends StatefulWidget {
  const RadioButton_Get({Key? key}) : super(key: key);

  @override
  State<RadioButton_Get> createState() => _RadioButton_GetState();
}

class _RadioButton_GetState extends State<RadioButton_Get> {
  //------------------------------------------------------------Getx.putController--------------------------------------------------------------//
  RadioController radioController = Get.put(RadioController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //----------------------------appBar------------------------------------------//
      appBar: AppBar(
        title: const Text("RadioButton"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Gender :"),
              const Text(
                "Male",
                style:
                    TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),
              ),
              //--------------------------------------------Male Radio Button---------------------------------------------------------//
              Obx(
                () => Radio(
                  value: "Male",
                  groupValue: radioController.gender.value,
                  onChanged: (val) {
                    radioController.onChangeGender(val);
                  },
                ),
              ),
              const Text(
                "Female",
                style:
                    TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),
              ),
              //--------------------------------------------Female radioButton------------------------------------------------------//
              Obx(
                () => Radio(
                  value: "Female",
                  groupValue: radioController.gender.value,
                  onChanged: (val) {
                    radioController.onChangeGender(val);
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("reading"),
              //-----------------------------------------------------readingCheckBox------------------------------------------------------//
              Obx(
                () => Checkbox(
                  value: radioController.readingCheckBox.value,
                  onChanged: (val) {
                    radioController.readingCheckBox.value =
                        !radioController.readingCheckBox.value;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
