import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tomatooo_app/Constants.dart';
import 'package:tomatooo_app/widgets/Custom_Button_icon.dart';

class FarmDetailsWidgets extends StatelessWidget {
  FarmDetailsWidgets({super.key ,});
 final String img = 'assets/Images/download.jpg';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ListView(
        children: [
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sunshine Farms',
                style: TextStyle(
                  fontFamily: kFontFamily,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 18,
                    color: kSecondaryColor,
                  ),
                  SizedBox(width: 3),
                  Text(
                    'California',
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.blueGrey,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '15 miles',
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.star, size: 30, color: Color(0xffFACC15)),
                  Icon(Icons.star, size: 30, color: Color(0xffFACC15)),
                  Icon(Icons.star, size: 30, color: Color(0xffFACC15)),
                  Icon(Icons.star, size: 30, color: Color(0xffFACC15)),
                  Icon(Icons.star, size: 30, color: Color(0xffFACC15)),
                  Text(
                    '(4.8)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact Information',
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.clock,
                        color: kSecondaryColor,
                        weight: 20,
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hours',
                            style: TextStyle(
                              fontFamily: kFontFamily,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Mon-Sat: 8AM-5PM, Sun: 9AM-3PM',
                            style: TextStyle(
                              fontFamily: kFontFamily,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        color: kSecondaryColor,
                        weight: 20,
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Established',
                            style: TextStyle(
                              fontFamily: kFontFamily,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '1985',
                            style: TextStyle(
                              fontFamily: kFontFamily,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'About Sunshine Farms',
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Sunshine Farms has been a cornerstone of sustainable agriculture in California for over three decades. Our family has been growing premium heirloom tomatoes using traditional organic methods passed down through generations. We take pride in our commitment to biodiversity, soil health, and environmentally friendly farming practices. Our tomatoes are known for their exceptional flavor, vibrant colors, and nutritional value.',
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Available Products',
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 15,
                                color: kSecondaryColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Beefsteak Tomatoes',
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 15,
                                color: kSecondaryColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Heirloom Varieties',
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 15,
                                color: kSecondaryColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Cherry Tomatoes',
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 15,
                                color: kSecondaryColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Roma Tomatoes',
                                style: TextStyle(
                                  fontFamily: kFontFamily,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Farm Gallery',
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/Images/download.jpg',
                        width: 100,
                        color: Colors.red,
                      ),
                      Image.asset(
                        'assets/Images/download.jpg',
                        width: 100,
                        color: Colors.red,
                      ),
                      Image.asset(
                        'assets/Images/download.jpg',
                        width: 100,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          CustomButtonIcon(
            title: 'Call Farm',
            color: kSecondaryColor,
            IconData: Icons.phone_outlined,
            iconColor: Colors.white,
            width: double.infinity,
            height: 60,
            fontsize: 20,
            iconsize: 20,
            border: Border.all(width: 0),
            fontcolor: Colors.white,
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
