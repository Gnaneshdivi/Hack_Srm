import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import 'dash.dart';
import 'menu.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

Color backgroundColor = Color.fromRGBO(130, 205, 113, 1);

class _DashboardState extends State<Dashboard> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  String title = "i\$plant";
  @override
  Widget build(BuildContext context) {
    GlobalKey<SliderMenuContainerState> _key =
        new GlobalKey<SliderMenuContainerState>();
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SliderMenuContainer(
          sliderOpen: SliderOpen.RIGHT_TO_LEFT,
          appBarColor: backgroundColor,
          key: _key,
          appBarPadding: const EdgeInsets.only(top: 50),
          sliderMenuOpenOffset: 250,
          appBarHeight: 60,
          title: RichText(
            text: TextSpan(
                text: 'i',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: '\$',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70)),
                  TextSpan(
                      text: 'plant',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                ]),
          ),
          sliderMenu: MenuWidget(),
          sliderMain: MainWidget()),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
