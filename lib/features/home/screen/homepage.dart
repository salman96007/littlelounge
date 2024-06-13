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
      children: const [
        DrawerHeader(child: Text("Drawer Header",style: TextStyle(
          fontWeight: FontWeight.bold
      ),),
      decoration: BoxDecoration(
      color: Colors.green,
      ),),
      ListTile(
      leading: Icon(Icons.settings,color: Colors.black,),
      title: Text("Settings",style: TextStyle(
      fontSize: 25
      ),),
      ),
      ListTile(
      leading: Icon(Icons.storage,size: 30,color: Colors.black,),
      title: Text("Storage",style: TextStyle(
      fontSize: 23
      ),),
      ),
      ListTile(
      leading: Icon(Icons.settings,color: Colors.black,),
      title: Text("Settings",style: TextStyle(
      fontSize: 25
      ),),
      ),

      ],
      ),
      ),
      );
    }
  }
