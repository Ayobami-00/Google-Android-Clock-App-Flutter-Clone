import 'package:flutter/material.dart';
import 'package:flutter_clock_app/utils/colors.dart';

class TimeZonePage extends StatefulWidget {
  @override
  _TimeZonePageState createState() => _TimeZonePageState();
}

class _TimeZonePageState extends State<TimeZonePage> {
  AppColors appColors = AppColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appColors.color2,
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
            backgroundColor: appColors.color4,
            onPressed: () => {},
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 8,
              child: ListView(
                children: <Widget>[
                  Container()
                ],
              )
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: appColors.color2,
                ),
              )
            )
          ],
        ));
  }
}
