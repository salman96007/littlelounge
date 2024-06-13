  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:littlelounge/constant/imageconstant.dart';

import '../../../constant/colorconstant.dart';

class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConst.primaryColor,
          elevation: 1,
        ),
        drawer: Drawer(
      child: ListView(
      children:  [
         DrawerHeader(child: ListTile(
           leading: Image.asset(ImageConstant.boy1),
           title: Text("data"),
         ))
       
          ],
         ),
       ),
      );
    }
  }
