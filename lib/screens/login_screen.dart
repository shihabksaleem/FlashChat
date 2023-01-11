import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/components/reusable_button.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_alt/modal_progress_hud_alt.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_Screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  String? email;
  String? pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFfbe4ec),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  'images/logg.jpg',
                ),
                Spacer(),
                Image.asset(
                  'images/flashAppLogo.png',
                  height: 100,
                ),
                Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .85,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    style: kInputTextStyle,
                    onChanged: (value) {
                      email = value;
                    },
                    decoration:
                        kInputDecoration.copyWith(hintText: 'Enter Your Email'),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .85,
                  child: TextField(
                      textAlign: TextAlign.center,
                      obscureText: true,
                      obscuringCharacter: '*',
                      style: kInputTextStyle,
                      onChanged: (value) {
                        pass = value;
                      },
                      decoration: kInputDecoration.copyWith(
                          hintText: 'Enter Password')),
                ),
                Spacer(),
                ReusableButton(
                  text: 'Log In',
                  buttonColor: Color(0xfff22b78),
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final user = await _auth.signInWithEmailAndPassword(
                          email: email!, password: pass!);
                      if (user != null) {
                        Navigator.pushReplacementNamed(context, ChatScreen.id);
                      }
                      setState(() {
                        showSpinner = false;
                      });
                    } catch (e) {
                      print(e);
                    }
                  },
                ),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
