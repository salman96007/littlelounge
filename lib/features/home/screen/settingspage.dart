import 'package:flutter/material.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/features/home/screen/semailid.dart';
import 'package:littlelounge/features/home/screen/smobilenumber.dart';
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
      backgroundColor: ColorConst.primaryColor.withOpacity(0.9),
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
                Text("My Account",style: TextStyle(color: ColorConst.secondary,fontWeight: FontWeight.w600,fontSize: width*0.05),),
              ],
            ),
            SizedBox(height: height*0.01,),
            Column(
              children: [
                Container(
                  height: height*0.22,
                  width: width*0.95,
                  child: Padding(
                    padding: EdgeInsets.only(left: width*0.02),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Edit profile",style: TextStyle(color: ColorConst.secondary,fontSize: width*0.04,fontWeight: FontWeight.w600,),),
                            Icon(Icons.arrow_right,color: ColorConst.secondary,),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Change password",style: TextStyle(color: ColorConst.secondary,fontSize: width*0.04,fontWeight: FontWeight.w600,),),
                            Icon(Icons.arrow_right,color: ColorConst.secondary,),
                          ],
                        ),
                        Divider(),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MobileNumber(),));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Phone number",style: TextStyle(color: ColorConst.secondary,fontSize: width*0.04,fontWeight: FontWeight.w600,),),
                              Icon(Icons.arrow_right,color: ColorConst.secondary,),
                            ],
                          ),
                        ),
                        Divider(),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EmailId(),));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Email id",style: TextStyle(color: ColorConst.secondary,fontSize: width*0.04,fontWeight: FontWeight.w600,),),
                              Icon(Icons.arrow_right,color: ColorConst.secondary,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: ColorConst.primaryColor,
                      borderRadius: BorderRadius.circular(width*0.03)
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.01,),
            Column(children: [
              Text("More",style: TextStyle(fontSize: width*0.05,color: ColorConst.secondary,fontWeight: FontWeight.w600),),
            ],),
            SizedBox(height: height*0.01,),
            Column(
              children: [
                Container(
                  height: height*0.1,
                  width: width*0.95,
                  child: Padding(
                    padding: EdgeInsets.only(left: width*0.02),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("About us",style: TextStyle(color: ColorConst.secondary,fontSize: width*0.04,fontWeight: FontWeight.w600,),),
                            Icon(Icons.arrow_right,color: ColorConst.secondary,)
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Privacy policy",style: TextStyle(color: ColorConst.secondary,fontSize: width*0.04,fontWeight: FontWeight.w600,),),
                            Icon(Icons.arrow_right,color: ColorConst.secondary,)
                          ],
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: ColorConst.primaryColor,
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
