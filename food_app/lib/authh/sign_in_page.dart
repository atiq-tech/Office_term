import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:food_app/homescreen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Future<void> _googleSignIn() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ["email"],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final User? user = (await _auth.signInWithCredential(credential)).user;
      //print("signed in" + user.displayName);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/foodbgg.jpg"), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: double.infinity,
            // color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Sign in to continue",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 23, 24, 23),
                      fontSize: 20,
                    )),
                Text(
                  "Vegi",
                  style: TextStyle(
                      color: Color.fromARGB(255, 175, 3, 138),
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5.0,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            offset: Offset(5, 5),
                            blurRadius: 10),
                      ]),
                ),
                Column(
                  children: [
                    SignInButton(
                      Buttons.Apple,
                      text: "Sign up with Apple",
                      onPressed: () {},
                    ),
                    SignInButton(
                      Buttons.Google,
                      text: "Sign up with Google",
                      onPressed: () {
                        _googleSignIn().then((value) => Navigator.of(context)
                            .pushReplacement(MaterialPageRoute(
                                builder: (context) => HomeScreen())));
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("By signing in you are agreeing to our",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 190, 190, 190),
                          fontSize: 18,
                        )),
                    Text("Terms and Privacy Policy",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 181, 182, 181),
                          fontSize: 18,
                        )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
