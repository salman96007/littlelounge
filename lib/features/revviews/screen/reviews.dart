import 'package:flutter/material.dart';

import '../../../constant/colorconstant.dart';
import '../../../main.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: Text("Reviews",style: TextStyle(color: ColorConst.secondary,fontSize: width*0.06,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
