import 'package:flutter/material.dart';

import '../../../constant/colorconstant.dart';
import '../../../main.dart';

class EmailId extends StatefulWidget {
  const EmailId({super.key});

  @override
  State<EmailId> createState() => _EmailIdState();
}

class _EmailIdState extends State<EmailId> {
  TextEditingController emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Email Id",style: TextStyle(color: ColorConst.secondary,fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.go,
              maxLength: 12,
              decoration: InputDecoration(
                  labelText: "Email Id",
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
