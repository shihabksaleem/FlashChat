import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/components/reusable_button.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_alt/modal_progress_hud_alt.dart';

import 'chat_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_Screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;

  String? email;
  String? pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        color: Color(0xfff22b78),
        inAsyncCall: showSpinner,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Image.asset(
                  'images/logg.jpg',
                ),
                Spacer(),
                Image.asset(
                  'images/flashAppLogo.png',
                  height: 100,
                ),
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
                  text: 'Create Account',
                  buttonColor: Color(0xfff22b78),
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email!, password: pass!);
                      if (newUser != null) {
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
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
