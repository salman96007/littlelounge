import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:littlelounge/core/providers/firebaseproviders.dart';
import 'package:littlelounge/features/auth/screen/createaccount.dart';
import 'package:littlelounge/features/home/screen/welcomepage.dart';
import 'package:littlelounge/model/usermodel.dart';

final addUserRespositoryProvider = Provider(
  (ref) => AdduserRespository(
      firebaseAuth: ref.watch(firebaseAuthProvider),
      firestore: ref.watch(firebaseProvider)),
);
class AdduserRespository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  AdduserRespository(
      {required FirebaseAuth firebaseAuth,
      required FirebaseFirestore firestore})
      : _firebaseAuth = firebaseAuth,
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
      required BuildContext context}) {
    _firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => WelcomPage()),
            (route) => false))
        .catchError((error) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("user not exist"))));
  }

  final GoogleSignIn _googleSignIn= GoogleSignIn();
  Future<UserCredential?>signInWithGoogle({required  currentUSerName,required currentUSerEmail,required BuildContext context})async{
    await _googleSignIn.signOut();
    final GoogleSignInAccount?googleSignInAccount = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googGoogleSignInAuthentication=await googleSignInAccount!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googGoogleSignInAuthentication.accessToken,idToken: googGoogleSignInAuthentication.idToken
    );
    final Auth = await FirebaseAuth.instance.signInWithCredential(credential);
    User? userDetails =Auth.user;
    currentUSerName =userDetails!.displayName!;
    currentUSerEmail =userDetails.email!;
    // currentUserImage =userDetails.photoURL;
    // SharedPreferences prefs2 = await SharedPreferences.getInstance();
    // prefs2.setBool("login",true);
    // prefs2.setString("user", currentUSerName.toString());
    // prefs2.setString("sign1", currentUserImage.toString());

    Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomPage(),));
  }




}


