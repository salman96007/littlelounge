
import 'package:firebase_core/firebase_core.dart';import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/features/auth/screen/createaccount.dart';
import 'package:littlelounge/features/auth/screen/forgotpassword.dart';
import 'package:littlelounge/features/auth/screen/loginpage.dart';
import 'package:littlelounge/features/auth/screen/rememberme.dart';
import 'package:littlelounge/features/auth/screen/signuppage.dart';
import 'package:littlelounge/features/auth/screen/verificationcode.dart';
import 'package:littlelounge/features/cart/screen/cartpage.dart';
import 'package:littlelounge/features/cart/screen/checkoutpage.dart';
import 'package:littlelounge/features/home/screen/accountinfrmtn.dart';
import 'package:littlelounge/features/home/screen/detaileddress.dart';
import 'package:littlelounge/features/home/screen/homepage.dart';
import 'package:littlelounge/features/home/screen/settingspage.dart';
import 'package:littlelounge/features/home/screen/welcomepage.dart';
import 'package:littlelounge/features/home/screen/welcomepage.dart';
import 'package:littlelounge/features/home/screen/wishlistpage.dart';
import 'package:littlelounge/features/payement/screen/continueshopping.dart';
import 'package:littlelounge/features/payement/screen/editaddress.dart';
import 'package:littlelounge/features/payement/screen/saveaddresspage.dart';
import 'package:littlelounge/features/payement/screen/selectaddress.dart';
import 'package:littlelounge/features/revviews/screen/addreview.dart';
import 'package:littlelounge/features/revviews/screen/reviews.dart';
import 'package:littlelounge/features/splashscreen/screen/splashscreen.dart';
import 'package:littlelounge/model/productmodel.dart';
import 'package:littlelounge/model/usermodel.dart';
import 'features/bottomnavigation/screen/bottomnavigation.dart';
import 'features/payement/screen/savecard.dart';
import 'firebase_options.dart';

String ? CategoryIdData;
ProductModel ? product;
 var height;
 var width;



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: MyApp()));
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
        home:SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
