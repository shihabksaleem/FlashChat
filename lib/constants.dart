import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Color(0xff292057),
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  hintStyle: TextStyle(color: Colors.grey),
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Color(0xff292057), width: 2.0),
  ),
);

const InputDecoration kInputDecoration = InputDecoration(
  hintText: 'Enter a value.',
  hintStyle: TextStyle(color: Color(0x70f22b78)),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Color(0xfff22b78), width: 1.0),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Color(0xfff22b78), width: 2.0),
  ),
);

const kInputTextStyle = TextStyle(color: Colors.grey);
