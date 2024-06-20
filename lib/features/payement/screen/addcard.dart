import 'package:flutter/material.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/main.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text("Add New Card",style: TextStyle(
          fontWeight: FontWeight.w600,
        ),) ,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: height*0.11,
                width: width*0.27,
                child: Image.asset(ImageConstant.card),
                decoration: BoxDecoration(
                    color:ColorConst.primaryColor,
                  borderRadius: BorderRadius.circular(width*0.04)
                ),

              ),
              Container(
                height: height*0.11,
                width: width*0.27,
                child: Image.asset(ImageConstant.paypal),
                decoration: BoxDecoration(
                    color:ColorConst.primaryColor,
                  borderRadius: BorderRadius.circular(width*0.04)
                ),

              ),
              Container(
                height: height*0.11,
                width: width*0.27,
                child: Image.asset(ImageConstant.bank),
                decoration: BoxDecoration(
                    color:ColorConst.primaryColor,
                  borderRadius: BorderRadius.circular(width*0.04)
                ),

              ),
            ],
          )
        ],
      ),
    );
  }
}
