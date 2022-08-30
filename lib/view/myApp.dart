// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import '../getx_Controller/getxView/multipal_view.dart';
import '../provider/provider_Demo/checkBox_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //-----------------MultiProvider------------------------//
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CheckBoxProvider>(
            create: (_) => CheckBoxProvider()),
      ],
      child: const GetMaterialApp(
        home: CountrySelect(),
      ),
    );
  }
}
