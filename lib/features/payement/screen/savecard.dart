import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/constant/colorconstant.dart';

class Savecard extends StatefulWidget {
  const Savecard({super.key});

  @override
  State<Savecard> createState() => _SavecardState();
}

class _SavecardState extends State<Savecard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorConst.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConst.primaryColor,
        title: Text("Payment",style: GoogleFonts.inter(
            fontWeight:FontWeight.w600,
            color: ColorConst.secondary
        ),),
        centerTitle: true,
      ),

    );
  }
}
