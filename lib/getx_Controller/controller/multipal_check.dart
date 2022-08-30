import 'package:get/get.dart';
import 'package:rediobutton_statemegment/getx_Controller/model/country_Model.dart';

class Multipal extends GetxController {
  /// Variable-----------------///
  bool selectAllCountries = false;
//--------------------------------------------Rx Variable-----------------------------------------------------------------//
  late Rx<Country> allCountry = Country(name: "All Country").obs;
  final countryItems = [
    Country(name: "India"),
    Country(name: "America"),
    Country(name: "Canada"),
    Country(name: "Australia"),
    Country(name: "London"),
    Country(name: "South Africa"),
    Country(name: "Germany"),
    Country(name: "Russia"),
    Country(name: "Poland"),
    Country(name: "Serbia"),
    Country(name: "Spain"),
  ];
}
