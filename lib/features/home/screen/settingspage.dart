import 'package:flutter/material.dart';
import 'package:littlelounge/constant/colorconstant.dart';
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
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: Text("Settings",style: TextStyle(color: ColorConst.secondary,fontWeight: FontWeight.w600),),
      ),
      body: Column(
        children: [
          Text("MY ACCOUNT",style: TextStyle(color: ColorConst.secondary,fontWeight: FontWeight.w600,fontSize: width*0.04),),

        ],
      ),
    );
  }
}
