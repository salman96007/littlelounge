import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/features/auth/screen/createaccount.dart';
import 'package:littlelounge/features/auth/screen/verificationcode.dart';
import 'package:littlelounge/features/home/screen/homepage.dart';
import 'package:littlelounge/features/payement/screen/saveaddresspage.dart';
import 'package:littlelounge/features/revviews/screen/addreview.dart';
import 'package:littlelounge/features/splashscreen/screen/splashscreen.dart';

 var height;
 var width;

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return  GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: MaterialApp(
        theme: ThemeData(
            textTheme: GoogleFonts.interTextTheme()
        ),

        home:AddReview(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
