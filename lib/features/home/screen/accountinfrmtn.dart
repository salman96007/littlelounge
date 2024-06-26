import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/main.dart';

class AccountInfrmtn extends StatefulWidget {
  const AccountInfrmtn({super.key});

  @override
  State<AccountInfrmtn> createState() => _AccountInfrmtnState();
}

class _AccountInfrmtnState extends State<AccountInfrmtn> {
  var file;
  pickFile(ImageSource) async {
    final imageFile=await ImagePicker.platform.pickImage(source: ImageSource);
    file=File(imageFile!.path);
    if(mounted){
      setState(() {
        file=File(imageFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: Text("Account Information",style: TextStyle(color: ColorConst.secondary,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: height*0.3,
                    width: width*1,
                    margin: EdgeInsets.only(bottom: width*0.11),
                    decoration: BoxDecoration(
                        color: ColorConst.seventh,
                        borderRadius: BorderRadius.circular(width*0.1)
                    ),
                  ),
                  CircleAvatar(
                    radius: width*0.2,
                    backgroundImage:AssetImage(ImageConstant.kid1),
                  ),
                  Positioned(
                    left: 210,
                    child: CircleAvatar(
                      radius: width*0.05,
                      child: SvgPicture.asset(SvgConstant.edit),
                    ),
                  ),

                ],
              )
            ],
          ),
          Column(
            children: [
            ],
          )
        ],
      ),
    );
  }
}
