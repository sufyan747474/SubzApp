import 'package:flutter/material.dart';
import 'package:subz/screens/MyProfile.dart';
import 'package:subz/screens/OrderScreen.dart';
import 'package:subz/screens/SettingScreen.dart';
import 'package:subz/screens/homeScreen.dart';
import 'package:subz/screens/searchScreen.dart';

List<Widget> tabs = <Widget>[
  HomeScreen(),
  SearchScreen(),
  OrderScreen(),
  MyProfile(),
  SettingScreen(),
];

class MainScreen1 extends StatefulWidget {
  MainScreen1({
    super.key,
  });

  @override
  State<MainScreen1> createState() => _MainScreen1State();
}

class _MainScreen1State extends State<MainScreen1>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: tabs.length,

      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context);
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
            tabController.index;
            setState(() {});
          }
        });
        return Scaffold(
          backgroundColor: Color(0xffc5fe01),
          body: TabBarView(
            children: tabs,
          ),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.only(
                bottom: width * .04, left: width * .02, right: width * .02),
            child: Container(
              padding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: width * 0),
              height: width * 0.22,
              decoration: const BoxDecoration(
                color: Color(0xff1c1c1c),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
              child: TabBar(
                // onTap: (value) {
                //   setState(() {});
                // },
                padding: EdgeInsets.all(0),
                indicator: BoxDecoration(color: Colors.transparent),
                tabs: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/feather-home.png',
                        width: tabController.index == 0
                            ? width * .063
                            : width * .06,
                      ),
                      Spacer(),
                      Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 11,
                            color: tabController.index == 0
                                ? Color(0xffc5fe01)
                                : Colors.white),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/feather-search.png',
                        width: tabController.index == 1
                            ? width * .073
                            : width * .07,
                      ),
                      Spacer(),
                      Text(
                        'Search',
                        style: TextStyle(
                            fontSize: 11.0,
                            color: tabController.index == 1
                                ? Color(0xffc5fe01)
                                : Colors.white),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/feather-list.png',
                        width: tabController.index == 2
                            ? width * .083
                            : width * .08,
                      ),
                      Spacer(),
                      Text(
                        'Orders',
                        style: TextStyle(
                            fontSize: 11.0,
                            color: tabController.index == 2
                                ? Color(0xffc5fe01)
                                : Colors.white),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/feather-user.png',
                        width: tabController.index == 3
                            ? width * .063
                            : width * .06,
                      ),
                      Spacer(),
                      Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 11.0,
                            color: tabController.index == 3
                                ? Color(0xffc5fe01)
                                : Colors.white),
                      )
                    ],
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/feather-settings.png',
                          width: tabController.index == 4
                              ? width * .073
                              : width * .07,
                        ),
                        Spacer(),
                        Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 11.0,
                              color: tabController.index == 4
                                  ? Color(0xffc5fe01)
                                  : Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
