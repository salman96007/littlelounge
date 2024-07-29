import 'package:flutter/material.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';

import '../../../main.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  TextEditingController nameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: width*0.21,
                  backgroundColor: ColorConst.fifth,
                  child: CircleAvatar(
                    radius: width*0.2,
                    backgroundColor: ColorConst.primaryColor,
                  ),
                ),
                SizedBox(height: width*0.02,),
                Text("FasilRahman",style: TextStyle(fontWeight: FontWeight.w600),),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Container(
                  width: width*0.8,
                  height: height*0.06,
                  child: Center(child: Text("Log in",style: TextStyle(fontWeight: FontWeight.w600,color: ColorConst.primaryColor),)),
                  decoration: BoxDecoration(
                      color: ColorConst.fifth,
                      borderRadius: BorderRadius.circular(width*0.06)
                  ),
                ),
                SizedBox(height: width*0.02,),
                Container(
                  width: width*0.8,
                  height: height*0.06,
                  child: Center(child: Text("Log into another account",style: TextStyle(fontWeight: FontWeight.w600,color: ColorConst.secondary),)),
                  decoration: BoxDecoration(
                      color: ColorConst.primaryColor,
                      borderRadius: BorderRadius.circular(width*0.06),
                      border: Border.all(color: ColorConst.fifth,width: width*0.005)
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: width*0.8,
              height: height*0.06,
              child: Center(child: Text("Create new account",style: TextStyle(fontWeight: FontWeight.w600,color: ColorConst.secondary),)),
              decoration: BoxDecoration(
                  color: ColorConst.primaryColor,
                  borderRadius: BorderRadius.circular(width*0.06),
                  border: Border.all(color: ColorConst.fifth,width: width*0.005)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
