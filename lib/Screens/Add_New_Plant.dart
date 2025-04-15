import 'package:flutter/material.dart';
import 'package:tomatooo_app/Constants.dart';
import 'package:tomatooo_app/widgets/Planet_Information_Container.dart';

class AddNewPlant extends StatelessWidget {
  const AddNewPlant({super.key});
  static String id = 'AddNewPlant';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffDCFCE7),
        surfaceTintColor: const Color(0xffDCFCE7),
        foregroundColor: kPraimryTextColor,
        title: const Text(
          'Add New Plant',
          style: TextStyle(
            fontFamily: kFontFamily,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: kPraimryTextColor,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [PlanetInformationContainer()],
      ),
    );
    ;
  }
}
