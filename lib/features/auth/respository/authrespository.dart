import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:littlelounge/core/providers/firebaseproviders.dart';
import 'package:littlelounge/features/auth/screen/createaccount.dart';
import 'package:littlelounge/features/auth/screen/signuppage.dart';
import 'package:littlelounge/features/home/screen/welcomepage.dart';
import 'package:littlelounge/main.dart';
import 'package:littlelounge/model/usermodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../model/productmodel.dart';
import '../../payement/screen/saveaddresspage.dart';
import '../screen/loginpage.dart';
UserModel? currentUserModel;
final addUserRespositoryProvider = Provider(
  (ref) => AdduserRespository(
      firebaseAuth: ref.watch(firebaseAuthProvider),
      firestore: ref.watch(firebaseProvider)),
);

class AdduserRespository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  AdduserRespository({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firestore,
  })  : _firebaseAuth = firebaseAuth,
        _firestore = firestore;
  CollectionReference get _user => _firestore.collection("user");
  addAuth({required UserModel detail}) {
    _firebaseAuth
        .createUserWithEmailAndPassword(
            email: detail.email, password: detail.password)
        .then((value) {
      _user.add(detail.toJson()).then(
            (value) => value.update(detail.copyWith(id: value.id).toJson()),
          );
    });
  }

  loginAuth(
      {required String email,
      required String password,
      required BuildContext context}) async {
    QuerySnapshot<Map<String, dynamic>> data = await FirebaseFirestore.instance
        .collection("user")
        .where("email", isEqualTo: email)
        .get();
    if (data.docs.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("no user")));
    } else {
      UserModel user = UserModel.fromJson(data.docs[0].data());
      if (data.docs[0]["password"] == password) {
        currentUSerName = user.name;
        currentUSerEmail = user.email;
        currentUSerPassword = user.password;
        currentUserImage = user.imageUrl;
        currentUSerId = user.id;
        currentUserModel = user;
        SharedPreferences prefs2 = await SharedPreferences.getInstance();
        prefs2.setBool("login",true);
        prefs2.setString('user', currentUSerName.toString(),);
        prefs2.setString('email', currentUSerEmail!);
        prefs2.setString("sign1", currentUserImage.toString());
        prefs2.setString("userId", currentUSerId.toString());
        prefs2.setString("imageUrl", currentUserImage!);
        // prefs2.setString("user", currentUSerName.toString());
        // prefs2.setString("sign1", currentUserImage.toString());

        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomPage(),
          ),
          (route) => false,
        );
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("please correct password ")));
      }
    }
  }

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  Future<UserCredential?> signInWithGoogle(
      {required BuildContext context}) async {
    await _googleSignIn.signOut();
    final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn.signIn();
    final GoogleSignInAuthentication googGoogleSignInAuthentication =
        await googleSignInAccount!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googGoogleSignInAuthentication.accessToken,
        idToken: googGoogleSignInAuthentication.idToken);
    final Auth = await FirebaseAuth.instance.signInWithCredential(credential);
    User? userDetails = Auth.user;
    currentUSerName = userDetails!.displayName!;
    currentUSerEmail = userDetails.email!;
    currentUserImage = userDetails.photoURL!;

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomPage(),
        ));
  }

  updateData(String imageUrl) {
    _user.doc(currentUSerId).update({"imageUrl": imageUrl});
  }

  updatepassword(String email, String password) async {
    QuerySnapshot<Map<String, dynamic>> data = await FirebaseFirestore.instance
        .collection("user")
        .where("email", isEqualTo: email)
        .get();
    UserModel user = UserModel.fromJson(data.docs[0].data());
    currentUSerName = user.name;
    currentUSerEmail = user.email;
    currentUSerPassword = user.password;
    currentUserImage = user.imageUrl;
    currentUSerId = user.id;
    _user.doc(currentUSerId).update({"email": email, "password": password});
  }

  addAddress(UserModel detail) {
    _user.doc(currentUSerId).update(detail.toJson());
  }

  updatefavourite(UserModel detail) {
    _user.doc(currentUSerId).update(detail.toJson());
  }

  updateAddToCart({required List addToCart}) {
    _user.doc(currentUSerId).update({"addTOCart": addToCart});
  }

  //  deleteAddtoCart({required UserModel detail}){
  //   _user.doc(detail.id).delete();
  //
  // }
}
