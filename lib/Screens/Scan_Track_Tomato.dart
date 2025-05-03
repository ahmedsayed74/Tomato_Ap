import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:tomatooo_app/Constants.dart';
import 'package:tomatooo_app/Screens/Profile_Page.dart';
import 'package:tomatooo_app/Screens/Tomato_Fruit_Tracking.dart';
import 'package:tomatooo_app/Screens/homepage.dart';
import 'package:tomatooo_app/widgets/Custom_Button_icon.dart';
import 'package:tomatooo_app/widgets/Custom_Container_widget.dart';

class ScanTrackTomato extends StatefulWidget {
  const ScanTrackTomato({super.key});
  static String id = 'Scan';

  @override
  State<ScanTrackTomato> createState() => _ScanTrackTomatoState();
}

class _ScanTrackTomatoState extends State<ScanTrackTomato>
    with TickerProviderStateMixin {
  late TabController tabController;

  int _currentIndex = 0;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  final _items = [
    SalomonBottomBarItem(
      icon: Icon(Icons.house_outlined),
      title: Text('Home'),
      selectedColor: Colors.white,
      unselectedColor: Colors.grey,
    ),
    SalomonBottomBarItem(
      icon: Icon(Icons.shopping_cart_outlined),
      title: Text('Shopping'),
      selectedColor: Colors.white,
      unselectedColor: Colors.grey,
    ),
    SalomonBottomBarItem(
      icon: Icon(Icons.person_outlined),
      title: Text('Person'),
      selectedColor: Colors.white,
      unselectedColor: Colors.grey,
    ),
  ];

  Future<void> _takePhoto(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);

    if (photo != null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Photo captured: ${photo.name}')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: const Color(0xffDCFCE7),
        backgroundColor: const Color(0xffDCFCE7),
        automaticallyImplyLeading: false,
        title: const Text(
          'Welcome, Farmer!',
          style: TextStyle(
            fontFamily: kFontFamily,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: kPraimryTextColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Text(
                    'What would you like to do today?',
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.4, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomContainerWidget(
                        title: 'Detect Tomato Disease',
                        subtitle:
                            'Take a photo of your tomato plant leaves to identify potential diseases and get treatment recommendations',
                        IconData: FontAwesomeIcons.leaf,
                        color: Colors.black,
                        backgroundColor: const Color(0xffDCFCE7),
                        iconColor: kPraimaryColor,
                      ),
                      GestureDetector(
                        onTap: () => _takePhoto(context),
                        child: CustomButtonIcon(
                          fontcolor: Colors.white,
                          border: Border.all(width: 0),
                          fontsize: 16,
                          iconsize: 20,
                          width: 340,
                          height: 60,
                          title: 'Scan Plant Leaves',
                          color: kPraimaryColor,
                          IconData: Icons.camera_alt_outlined,
                          iconColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 26),
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.4, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomContainerWidget(
                        title: 'Tomato Fruit Follow-up',
                        subtitle:
                            'Monitor your tomato fruit growth, track quality metrics, and record harvest data',
                        IconData: FontAwesomeIcons.waveSquare,
                        color: Colors.black,
                        backgroundColor: const Color(0xffDCFCE7),
                        iconColor: kPraimaryColor,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, TomatoFruitTracking.id);
                        },
                        child: CustomButtonIcon(
                          fontcolor: Colors.white,
                          border: Border.all(width: 0),
                          fontsize: 16,
                          iconsize: 18,
                          width: 340,
                          height: 60,
                          title: 'Track Fruit Development',
                          color: kPraimaryColor,
                          IconData: Icons.show_chart,
                          iconColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: const Color(0xff282F3C),
        ),
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: SalomonBottomBar(
          curve: Curves.ease,
          margin: const EdgeInsets.all(10),
          duration: const Duration(milliseconds: 300),
          items: _items,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });

            // Navigation logic
            if (index == 0) {
              Navigator.pushReplacementNamed(context, ScanTrackTomato.id);
            } else if (index == 1) {
              Navigator.maybePop(context, HomePage.id);
            } else if (index == 2) {
              Navigator.pushReplacementNamed(context, ProfilePage.id);
            }
          },
        ),
      ),
    );
  }
}
