// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider_Demo/checkBox_provider.dart';

class CheckBoxView extends StatefulWidget {
  const CheckBoxView({Key? key}) : super(key: key);

  @override
  State<CheckBoxView> createState() => _CheckBoxViewState();
}

class _CheckBoxViewState extends State<CheckBoxView> {
  @override
  Widget build(BuildContext context) {
    //----------------------------------checkBoxProvider------------------------------------//
    final checkBoxProvider = Provider.of<CheckBoxProvider>(context);
    final abc = checkBoxProvider.nameList;
    return Scaffold(
      //------------------------AppBAr----------------------//
      appBar: AppBar(
        title: const Text("CheckBox Provider"),
      ),

      ///   ListViewBuilder       ///
      body: ListView.builder(
        itemCount: abc.length,
        itemBuilder: (context, index) {
          final checkBoxProvider = abc[index];
          return Column(
            children: [
              Row(
                children: [
                  Checkbox(
                      value: checkBoxProvider.value,
                      onChanged: (val) {
                        Provider.of<CheckBoxProvider>(context, listen: false)
                            .selectCountry(val!, index);
                      }),
                  Text(checkBoxProvider.name!),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
