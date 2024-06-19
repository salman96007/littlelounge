import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:littlelounge/constant/colorconstant.dart';

import '../../../main.dart';

class WelcomPage extends StatefulWidget {
  const WelcomPage({super.key});

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Container(
            height: height*1,
            width: width*1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.05,0.7],
                  colors: [
                ColorConst.thirdColor.withOpacity(0.5),
                ColorConst.thirdColor,
              ]
              )
            ),
          )
         ],
      ),

    );
  }
}
