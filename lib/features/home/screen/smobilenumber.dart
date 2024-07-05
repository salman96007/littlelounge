import 'package:flutter/material.dart';
import 'package:littlelounge/constant/colorconstant.dart';

import '../../../main.dart';

class MobileNumber extends StatefulWidget {
  const MobileNumber({super.key});

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  TextEditingController numberController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: Text("Phone number",style: TextStyle(color: ColorConst.secondary,fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.04),
        child: Column(
          children: [
            TextFormField(
              controller: numberController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.go,
              maxLength: 12,
              decoration: InputDecoration(
                labelText: "Phone number",
                labelStyle: TextStyle(fontSize: width*0.04,color: ColorConst.secondary),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width*0.03),
                  borderSide: BorderSide(color: ColorConst.secondary)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width*0.03),
                  borderSide: BorderSide(color: ColorConst.secondary)
                )
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: width*0.44,
              height: height*0.060,
              child: Text("Update",style: TextStyle(color: ColorConst.primaryColor,fontSize: width*0.05,fontWeight: FontWeight.w600),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.03),
                color: ColorConst.seventh
              ),
            )
          ],
        ),
      ),
    );
  }
}
