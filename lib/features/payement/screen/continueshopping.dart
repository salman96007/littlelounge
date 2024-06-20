import 'package:flutter/material.dart';
import 'package:littlelounge/constant/colorconstant.dart';

class Continueshopping extends StatefulWidget {
  const Continueshopping({super.key});

  @override
  State<Continueshopping> createState() => _ContinueshoppingState();
}

class _ContinueshoppingState extends State<Continueshopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorConst.primaryColor,
      appBar: AppBar(
        backgroundColor:ColorConst.primaryColor,
        elevation: 0,
      ),
      body:Center(
        child: Column(
          children: [


          ],
        ),
      ),
    );
  }
}
