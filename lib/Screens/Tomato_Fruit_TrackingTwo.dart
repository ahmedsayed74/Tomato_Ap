import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:tomatooo_app/Constants.dart';
import 'package:tomatooo_app/Screens/Home_Page.dart';
import 'package:tomatooo_app/Screens/Scan_Track_Tomato.dart';
import 'package:tomatooo_app/widgets/Tab_One_Tomato_Fruit_Tracking.dart';
import 'package:tomatooo_app/widgets/Tab_Two_Tomato_Fruit_Tracking.dart';

class TomatoFruitTrackingtwo extends StatefulWidget {
  const TomatoFruitTrackingtwo({super.key});
  static String id = 'Tomatofriut';

  @override
  State<TomatoFruitTrackingtwo> createState() => _TomatoFruitTrackingtwoState();
}

class _TomatoFruitTrackingtwoState extends State<TomatoFruitTrackingtwo>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

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

  int _currentIndex = 0;
  final _items = [
    BottomNavyBarItem(
      icon: Icon(FontAwesomeIcons.house),
      title: Text('Home'),
      activeColor: kPraimaryColor,
    ),
    BottomNavyBarItem(
      icon: Icon(FontAwesomeIcons.cartShopping),
      title: Text('Shopping'),
      activeColor: kPraimaryColor,
    ),
    BottomNavyBarItem(
      icon: Icon(FontAwesomeIcons.person),
      title: Text('Person'),
      activeColor: kPraimaryColor,
    ),
  ];
  final _screens = [
    ScanTrackTomato(),
    HomePage(),
    Center(child: Text('Re page')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      // bottomNavigationBar: Card(
      //   color: Colors.black87,
      //   elevation: 6,
      //   margin: EdgeInsets.all(16),
      //   child: SalomonBottomBar(
      //     items: _items,
      //     currentIndex: _currentIndex,
      //     onTap:
      //         (index) => setState(() {
      //           _currentIndex = index;
      //         }),
      //   ),
      // ),
      appBar: AppBar(
        surfaceTintColor: const Color(0xffDCFCE7),
        backgroundColor: const Color(0xffDCFCE7),
        foregroundColor: kPraimryTextColor,
        title: const Text(
          'Tomato Fruit Tracking',
          style: TextStyle(
            fontFamily: kFontFamily,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: kPraimryTextColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: kbackgroundColor),
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    Container(
                      width: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 239, 239, 240),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: TabBar(
                              dividerColor: const Color.fromARGB(
                                255,
                                239,
                                239,
                                240,
                              ),
                              unselectedLabelColor: const Color(0xff9B9BA1),
                              labelColor: Colors.black,
                              indicatorWeight: 1,
                              indicatorSize: TabBarIndicatorSize.tab,
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                              indicator: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              controller: tabController,
                              tabs: const [
                                Tab(text: 'Active Tracking'),
                                Tab(text: 'Growth History'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: const [
                          TabOneTomatoFruitTracking(),
                          TabTwoTomatoFruitTracking(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Card(
        color: Color(0xff282F3C),
        margin: EdgeInsets.all(20),
        child: BottomNavyBar(
          items: _items,
          onItemSelected: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        // child: BottomNavyBar(
        //   curve: Curves.ease,

        //   margin: EdgeInsets.all(10),
        //   duration: Duration(seconds: 1),
        //   items: _items,
        //   currentIndex: _currentIndex,
        //   onTap:
        //       (index) => setState(() {
        //         _currentIndex = index;
        //       }),
        // ),
      ),
    );
  }
}
