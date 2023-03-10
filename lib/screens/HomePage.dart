import 'package:assessment_test/screens/Account.dart';
import 'package:assessment_test/screens/Community.dart';
import 'package:assessment_test/screens/Resources.dart';
import 'package:assessment_test/screens/Session.dart';
import 'package:assessment_test/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> homeScreenDisplay = <Widget>[
      const Home(),
      const Resources(),
      const Session(),
      const Community(),
      const Account()
    ];

    List<BottomNavigationBarItem> bottomNavigationItem = [
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.home_sharp,
          ),
          label: "Home"),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.navigation_outlined,
          ),
          label: "Resources"),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_today_outlined,
          ),
          label: "Session"),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.group_outlined,
          ),
          label: "Community"),
      BottomNavigationBarItem(
        icon: SvgPicture.asset("assets/images/profile.svg"),
        label: "Account",
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: homeScreenDisplay.elementAt(_selectedIndex),
        ),
      ),
      backgroundColor: kScaffoldColor,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        key: _scaffoldKey,
        items: bottomNavigationItem,
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kBlack,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedIconTheme: const IconThemeData(color: kPrimaryColor),
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
