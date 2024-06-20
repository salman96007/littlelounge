import 'package:flutter/material.dart';
import 'package:littlelounge/constant/colorconstant.dart';

import '../../../main.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.primaryColor,
      appBar: AppBar(
        title: Text("Cart",style: TextStyle(
          color: ColorConst.secondary,
          fontWeight: FontWeight.w600,
          fontSize: width*0.05,
        ),),
        elevation: 1,
        backgroundColor: ColorConst.primaryColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: width*0.05,left: width*0.05,top: width*0.1),
            width: width*0.9,
            height: height*0.22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width*0.03),
              color: ColorConst.forth.withOpacity(0.3),
              boxShadow: [
                BoxShadow(
                  color: ColorConst.secondary.withOpacity(0.2)
                )
              ]
            ),

          )
        ],
      ),
    );
  }
}
