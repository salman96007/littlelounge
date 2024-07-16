import 'package:flutter/material.dart';
import 'package:littlelounge/constant/colorconstant.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: Text("Privacy policy",style: TextStyle(color: ColorConst.secondary,fontWeight: FontWeight.w600),),
      ),
    );
  }
}
