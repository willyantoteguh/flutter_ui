import 'package:ORDO_UI/presentation/screens/test_one_screen.dart';
import 'package:ORDO_UI/presentation/screens/test_three_screen.dart';
import 'package:ORDO_UI/presentation/screens/test_two_screen.dart';
import 'package:ORDO_UI/presentation/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final int initialPage;

  MainScreen({this.initialPage = 0});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    selectedPage = widget.initialPage;
    pageController = PageController(initialPage: widget.initialPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    selectedPage = index;
                  });
                },
                children: <Widget>[
                  TestOneScreen(),
                  TestTwoScreen(),
                  TestThreeScreen()
                ]),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: bottomNavbar(
                selectedIndex: selectedPage,
                onTap: (index) {
                  setState(() {
                    selectedPage = index;
                  });
                  pageController.jumpToPage(selectedPage);
                },
              ))
        ],
      ),
    );
  }
}
