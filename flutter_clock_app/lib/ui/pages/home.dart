// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_clock_app/ui/pages/time_zone.dart';
import 'package:flutter_clock_app/ui/pages/timer.dart';

import 'package:flutter_clock_app/utils/colors.dart';
import 'package:flutter_clock_app/ui/pages/alarm.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  AppColors appColors = AppColors();
  final List<Widget> _children = [
    AlarmPage(),
    TimeZonePage(),
    TimerPage(),
    Text("4"),
    Text("5"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          backgroundColor: appColors.color2,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              backgroundColor: appColors.color2,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: InkWell(
                        onTap: () =>  onTabTapped(0),
                        child: Icon(
                          Icons.alarm,
                          size: 25.0,
                          color: appColors.color1,
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () => onTabTapped(1),
                        child: Icon(
                          Icons.timer,
                          size: 25.0,
                          color: appColors.color1,
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () => onTabTapped(2),
                        child: Icon(
                          Icons.hourglass_empty,
                          size: 25.0,
                          color: appColors.color1,
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () => onTabTapped(3),
                        child: Icon(
                          Icons.timer,
                          size: 25.0,
                          color: appColors.color1,
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () => {},
                        child: Icon(
                          Icons.more_vert,
                          size: 25.0,
                          color: appColors.color1,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: _children[_currentIndex]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
