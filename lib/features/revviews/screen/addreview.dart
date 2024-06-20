import 'package:flutter/material.dart';
import 'package:littlelounge/constant/colorconstant.dart';

import '../../../main.dart';

class AddReview extends StatefulWidget {
  const AddReview({super.key});

  @override
  State<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: ColorConst.primaryColor,
        title: Text("Add Review",style: TextStyle(color: ColorConst.secondary,fontSize: width*0.06,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Container(
            width: width*0.90,
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.next,
              style: TextStyle(fontSize: width * 0.05),
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(
                  fontSize: width*0.05,
                  color: ColorConst.secondary,
                  fontWeight: FontWeight.bold
                ),
                hintText: "Type your name",
                hintStyle: TextStyle(
                    fontSize: width * 0.035,
                    color: ColorConst.eighth),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(width * 0.05)),
                filled: true,
                fillColor: ColorConst.eighth.withOpacity(0.08),
              ),
            ),
          ),
          SizedBox(
            width: width*0.90,
            child: TextFormField(
              maxLines: 8,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.next,
              style: TextStyle(fontSize: width * 0.05),
              decoration: InputDecoration(
                labelText: "How was your experience ?",
                labelStyle: TextStyle(
                  fontSize: width*0.05,
                  color: ColorConst.secondary,
                  fontWeight: FontWeight.bold
                ),
                hintText: "Describe your experience?",
                hintStyle: TextStyle(
                    fontSize: width * 0.035,
                    color: ColorConst.eighth),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(width * 0.05)),
                filled: true,
                fillColor: ColorConst.eighth.withOpacity(0.08),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
