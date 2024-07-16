import 'package:flutter/material.dart';
import 'package:littlelounge/constant/colorconstant.dart';

class AboutusPage extends StatefulWidget {
  const AboutusPage({super.key});

  @override
  State<AboutusPage> createState() => _AboutusPageState();
}

class _AboutusPageState extends State<AboutusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: Text("About us",style: TextStyle(color: ColorConst.secondary,fontWeight: FontWeight.w600),),
      ),
    );
  }
}
