import 'package:flutter/material.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/main.dart';

class CreatAccount extends StatelessWidget {
  const CreatAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Text("Let’s Get Started",style: TextStyle(
            fontSize: width*0.05,
            fontWeight: FontWeight.bold,
          ),),
          Column(

            children: [
              Container(
                height: height*0.05,
                width: width*0.7,
                decoration: BoxDecoration(
                  color:ColorConst.seventh
                ),
              )
            ],
          )
        ],
      ),


    );
  }
}
