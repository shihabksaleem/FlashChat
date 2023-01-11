// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flash_chat/components/reusable_button.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_Screen';
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfbe4ec),
      body: Container(
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         alignment: Alignment.topCenter,
        //         image: AssetImage(
        //           'images/login.png',
        //         ),
        //         fit: BoxFit.fitWidth)),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/login.png'),
            SizedBox(
              height: 50,
            ),
            ListTile(
              title: Text(
                'Welcome!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xfff22b78),
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'Connect With Your Circle',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0x50f22b78),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 40),
            ReusableButton(
              text: 'Log In',
              buttonColor: Color(0xfff22b78),
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            ReusableButton(
              text: 'Register',
              buttonColor: Color(0xff292057),
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
