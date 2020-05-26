import 'package:flutter/material.dart';

import 'package:flutter_clock_app/utils/colors.dart';
import 'package:flutter_clock_app/ui/widgets/custom_expansion_tile.dart' as custom;
import 'dart:math' as math;

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
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
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            Color expansionTileColor = appColors.color2;
            return custom.ExpansionTile(
              backgroundColor: expansionTileColor,
              title: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: RichText(
                  text: TextSpan(
                    text: '4:15',
                    style: TextStyle(color: appColors.color1, fontSize: 50.0),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' AM',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              subtitle: Padding(
                  padding: const EdgeInsets.only(top: 27.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Wake Philip up',
                      style: TextStyle(color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Tomorrow',
                            style: TextStyle(
                                color: appColors.color1,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )),
              //      trailing: Column(
              //   children: <Widget>[
              //     Icon(
              //       Icons.close,
              //       color: Colors.white,
              //     ),
              //     SizedBox(height: 5.0),
              //     Icon(
              //       Icons.arrow_downward,
              //       color: Colors.white,
              //     ),
              //   ],
              // ),
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.check, color:appColors.color1,),
                      label: Text("Repeat",
                          style: TextStyle(
                            color: appColors.color1,
                          ))),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.check,
                              color: appColors.color1,
                            ),
                            label: Text("Default(Everlast)",
                                style: TextStyle(
                                  color: appColors.color1,
                                ))),
                        SizedBox(width: 80.0),
                        FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.check,
                              color: appColors.color1,
                            ),
                            label: Text("Vibrate",
                                style: TextStyle(
                                  color: appColors.color1,
                                ))),
                      ],
                    )),
                Align(
                  alignment: Alignment.centerLeft,
                  child: FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.label,
                        color: appColors.color1,
                      ),
                      label: Text("Label",
                          style: TextStyle(
                            color: appColors.color1,
                          ))),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: appColors.color1,
                        ),
                        label: Text("Delete",
                            style: TextStyle(
                              color: appColors.color1,
                            )),
                      ),
                      SizedBox(width: 220.0),
                      Transform.rotate(
                        angle: 180 * math.pi/180,
                        child: Icon(Icons.expand_more, color: Colors.white,),
                      )
                    ],
                  ),
                ),
              ],
            );
            // ExpansionTile(
            //   backgroundColor: expansionTileColor,
            // title: Padding(
            //   padding: const EdgeInsets.only(top: 8.0),
            //   child: RichText(
            //     text: TextSpan(
            //       text: '4:15',
            //       style: TextStyle(color: appColors.color1, fontSize: 50.0),
            //       children: <TextSpan>[
            //         TextSpan(
            //             text: ' AM',
            //             style: TextStyle(
            //                 fontSize: 20.0, fontWeight: FontWeight.bold)),
            //       ],
            //     ),
            //   ),
            // ),
            // subtitle: Padding(
            //     padding: const EdgeInsets.only(top: 27.0),
            //     child: RichText(
            //       text: TextSpan(
            //         text: 'Wake Philip up',
            //         style: TextStyle(color: Colors.grey),
            //         children: <TextSpan>[
            //           TextSpan(
            //               text: ' Tomorrow',
            //               style: TextStyle(
            //                   color: appColors.color1,
            //                   fontWeight: FontWeight.bold)),
            //         ],
            //       ),
            //     )),
            // trailing: Column(
            //   children: <Widget>[
            //     Icon(
            //       Icons.close,
            //       color: Colors.white,
            //     ),
            //     SizedBox(height: 5.0),
            //     Icon(
            //       Icons.arrow_downward,
            //       color: Colors.white,
            //     ),
            //   ],
            // ),
            //   onExpansionChanged: (bool) {
            //     if (expansionTileColor == appColors.color2) {
            //       setState(() {
            //         expansionTileColor = appColors.color3;
            //       });
            //     } else if (expansionTileColor == appColors.color3) {
            //       expansionTileColor = appColors.color2;
            //     }
            //   },
            //   children: <Widget>[
            //     IconButton(
            //       onPressed: () {},
            //       icon: Icon(Icons.check),
            //     )
            //   ],
            // ),
          },
          itemCount: 10),
    );
  }
}
