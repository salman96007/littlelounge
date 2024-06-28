import 'package:flutter/material.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/main.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: Text("Settings",style: TextStyle(color: ColorConst.secondary,fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
               children: [
                Text("My Account",style: TextStyle(color: ColorConst.secondary,fontWeight: FontWeight.w600,fontSize: width*0.04),),
              ],
            ),
            Column(
              children: [
                Container(
                  height: height*0.05,
                  width: width*0.95,
                  child: Row(
                    children: [
                      Text("Edit profile",style: TextStyle(color: ColorConst.primaryColor,fontSize: width*0.05,fontWeight: FontWeight.w600,),),
                      Icon(Icons.arrow_forward_ios_rounded,color: ColorConst.primaryColor,),
                      SizedBox(),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: ColorConst.seventh,
                      borderRadius: BorderRadius.circular(width*0.03)
                  ),
                ),
                Container(
                  height: height*0.05,
                  width: width*0.95,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Change password",style: TextStyle(color: ColorConst.primaryColor,fontSize: width*0.05,fontWeight: FontWeight.w600,),),
                      Icon(Icons.arrow_forward_ios_rounded,color: ColorConst.primaryColor,)
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: ColorConst.seventh,
                      borderRadius: BorderRadius.circular(width*0.03)
                  ),
                ),
                Container(
                  height: height*0.05,
                  width: width*0.95,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Phone number",style: TextStyle(color: ColorConst.primaryColor,fontSize: width*0.05,fontWeight: FontWeight.w600,),),
                      Icon(Icons.arrow_forward_ios_rounded,color: ColorConst.primaryColor,)
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: ColorConst.seventh,
                      borderRadius: BorderRadius.circular(width*0.03)
                  ),
                ),
              ],
            ),
            Divider(),
            Column(children: [
              Text("More",style: TextStyle(fontSize: width*0.04,color: ColorConst.secondary,fontWeight: FontWeight.w600),),
            ],),
            Column(
              children: [
                Container(
                  height: height*0.05,
                  width: width*0.95,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("About us",style: TextStyle(color: ColorConst.primaryColor,fontSize: width*0.05,fontWeight: FontWeight.w600,),),
                      Icon(Icons.arrow_forward_ios_rounded,color: ColorConst.primaryColor,)
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: ColorConst.seventh,
                      borderRadius: BorderRadius.circular(width*0.03)
                  ),
                ),
                Container(
                  height: height*0.05,
                  width: width*0.95,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Privacy policy",style: TextStyle(color: ColorConst.primaryColor,fontSize: width*0.05,fontWeight: FontWeight.w600,),),
                      Icon(Icons.arrow_forward_ios_rounded,color: ColorConst.primaryColor,)
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: ColorConst.seventh,
                      borderRadius: BorderRadius.circular(width*0.03)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
