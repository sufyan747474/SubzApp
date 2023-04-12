import 'package:flutter/material.dart';
import 'package:subz/screens/MyProfile.dart';
import 'package:subz/screens/OrderScreen.dart';
import 'package:subz/screens/SettingScreen.dart';
import 'package:subz/screens/homeScreen.dart';
import 'package:subz/screens/searchScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  int currentTab = 0;
  final List<Widget> Screens = [
    HomeScreen(),
    SearchScreen(),
    OrderScreen(),
    MyProfile(),
    SettingScreen(),
  ];
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 5,
      vsync: this,
    );
  }

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: Container(
        color: Color(0xffc5fe01),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            height: width * 0.22,
            decoration: BoxDecoration(
              color: Color(0xff1c1c1c),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      currentScreen = HomeScreen();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/feather-home.png',
                        width: width * .06,
                      ),
                      Spacer(),
                      Text(
                        'Home',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentScreen = SearchScreen();
                      currentTab = 1;
                    });
                  },
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/feather-search.png',
                          width: width * .07,
                        ),
                        Spacer(),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentScreen = OrderScreen();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/feather-list.png',
                        width: width * .08,
                      ),
                      Spacer(),
                      Text(
                        'Orders',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentScreen = MyProfile();
                      currentTab = 3;
                    });
                  },
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/feather-user.png',
                          width: width * .06,
                        ),
                        Spacer(),
                        Text(
                          'Profile',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentScreen = SettingScreen();
                      currentTab = 4;
                    });
                  },
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/feather-settings.png',
                          width: width * .07,
                        ),
                        Spacer(),
                        Text(
                          'Settings',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
