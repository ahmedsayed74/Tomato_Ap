import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tomatooo_app/Constants.dart';
import 'package:tomatooo_app/Screens/Scan_Track_Tomato.dart';
import 'package:tomatooo_app/widgets/Custom_Button.dart';

class ScanResultWidgets extends StatelessWidget {
  const ScanResultWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: ListView(
        children: [
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.withOpacity(0.2)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image Placeholder
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                  ),
                  child: Center(
                    child: Icon(Icons.image, size: 40, color: Colors.grey[500]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Early Blight',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kPraimryTextTwoColor,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Early blight is a common fungal disease that affects tomato plants. It's characterized by brown spots with concentric rings on leaves, which can lead to leaf yellowing and drop.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 220,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Care Instructions',
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 19,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: kbackgroundColorTwo,
                        child: Icon(
                          FontAwesomeIcons.leaf,
                          size: 18,
                          color: kPraimryTextColor,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Remove affected leaves to prevent spread',
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: kbackgroundColorTwo,
                        child: Icon(
                          Icons.water_drop_outlined,
                          size: 18,
                          color: kPraimryTextColor,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Water at the base of the plant to keep leaves dry',
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: kbackgroundColorTwo,
                        child: Icon(
                          Icons.wb_sunny_outlined,
                          size: 18,
                          color: kPraimryTextColor,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Ensure proper sunlight and air circulation',
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ScanTrackTomato.id);
            },
            child: CustomButton(
              title: 'Back to Home',
              color: kPraimaryColor,
              width: double.infinity,
              height: 55,
              fontsize: 16,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
