import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/multipal_check.dart';
import '../model/country_Model.dart';

class CountrySelect extends StatefulWidget {
  const CountrySelect({Key? key}) : super(key: key);

  @override
  State<CountrySelect> createState() => _CountrySelectState();
}

class _CountrySelectState extends State<CountrySelect> {
  //-----------------------------------------Multipal Controller----------------------------------//
  Multipal multipal = Get.put(Multipal());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multipal CheckBox"),
      ),
      //------------------ListView--------------------//
      body: ListView(
        children: [
          ///-----------------AllClick----------------///
          ListTile(
            onTap: () => onAllClicked(multipal.allCountry.value),
            leading: Checkbox(
                value: multipal.allCountry.value.selectAll,
                onChanged: (val) {
                  onAllClicked(multipal.allCountry.value);
                }),
            title: Text(
              multipal.allCountry.value.name.toString(),
            ),
          ),
          const Divider(),

          ///---------------------List Item------------------///
          ...multipal.countryItems.map(
            (e) => ListTile(
              onTap: () => onItemSelect(e),
              leading: Checkbox(
                value: e.selectValue,
                onChanged: (val) => onItemSelect(e),
              ),
              title: Text(
                e.name.toString(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///---------------AllClicked Function-------------------------///
  onAllClicked(Country check) {
    final newClick = !check.selectAll;
    setState(() {
      check.selectAll = newClick;
      for (var element in multipal.countryItems) {
        element.selectAll = newClick;

        if (element.selectAll) {
          element.selectValue = true;
        } else {
          element.selectValue = false;
        }
      }
    });
  }

  ///-----------------Item Select Function------------------------///
  onItemSelect(Country check) {
    setState(() {
      check.selectValue = !check.selectValue;
      if (!check.selectValue) {
        multipal.allCountry.value.selectAll = false;
      } else {
        final allListClick =
            multipal.countryItems.every((element) => element.selectValue);
        multipal.allCountry.value.selectValue = allListClick;
        if (allListClick) {
          multipal.allCountry.value.selectAll = true;
        }
      }
    });
  }
}
