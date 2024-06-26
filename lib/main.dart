import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/features/auth/screen/createaccount.dart';
import 'package:littlelounge/features/auth/screen/signuppage.dart';
import 'package:littlelounge/features/auth/screen/verificationcode.dart';
import 'package:littlelounge/features/bottomnavigation/screen/bottomnavigation.dart';
import 'package:littlelounge/features/home/screen/homepage.dart';
import 'package:littlelounge/features/payement/screen/continueshopping.dart';
import 'package:littlelounge/features/payement/screen/saveaddresspage.dart';
import 'package:littlelounge/features/revviews/screen/reviews.dart';
import 'package:littlelounge/features/splashscreen/screen/splashscreen.dart';

import 'firebase_options.dart';

 var height;
 var width;




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(
      child: MyApp()));

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
        home: Signup(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
