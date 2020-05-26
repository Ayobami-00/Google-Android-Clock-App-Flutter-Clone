import 'package:flutter/material.dart';
import 'package:flutter_clock_app/ui/pages/count_down_timer.dart';
import 'package:flutter_clock_app/utils/colors.dart';

class TimerPage extends StatefulWidget {
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  AppColors appColors = AppColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appColors.color2,
        // floatingActionButton: Align(
        //   alignment: Alignment.bottomCenter,
        //   child: FloatingActionButton(
        //     backgroundColor: appColors.color4,
        //     onPressed: () => {},
        //     tooltip: 'Increment',
        //     child: Icon(Icons.add),
        //   ),
        // ),
        body: CountDownTimer(),
      
    );
  }
}