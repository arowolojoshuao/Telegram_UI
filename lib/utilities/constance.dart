/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:telegram_fluttermarketplace/utilities/constance.dart' as style;

const titleColor = Colors.white;
const appColor = Color(0xFF2AABEE);
const backColor = Color.fromARGB(255, 240, 240, 240);
const itemColor = Color.fromARGB(255, 81, 125, 162);

contentButtonStyle() {
  return BoxDecoration(
    color: Color(0xFF2AABEE),
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
  );
}

pageTitle() {
  return TextStyle(fontFamily: 'medium', color: titleColor, fontSize: 18);
}

simpleTextInput(val) {
  return InputDecoration(
      hintText: '$val',
      hintStyle: TextStyle(color: Colors.grey),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      border: inputBox(),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: style.appColor)),
      enabledBorder: inputBox());
}

inputBox() {
  return UnderlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.grey.shade300));
}

messageTextInput(val) {
  return InputDecoration(
      hintText: '$val',
      hintStyle: TextStyle(color: Colors.grey),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none);
}

bottomBorder() {
  return BoxDecoration(
      border:
          Border(bottom: BorderSide(width: 1, color: Colors.grey.shade300)));
}

nameText() {
  return TextStyle(fontFamily: 'bold', fontSize: 14);
}

avatarBox(clr) {
  return BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(100)), color: clr);
}

avatarText() {
  return TextStyle(fontSize: 18, fontFamily: 'medium', color: Colors.white);
}

darkAvatarText() {
  return TextStyle(fontFamily: 'semi-bold', color: Colors.grey, fontSize: 18);
}

smallgreyText() {
  return TextStyle(fontSize: 14, color: Colors.grey);
}

smallblueText() {
  return TextStyle(fontSize: 14, color: appColor);
}

sidemenuTitle() {
  return TextStyle(fontFamily: 'bold');
}

blueHeaderText() {
  return TextStyle(fontFamily: 'semi-bold', color: appColor);
}

listTitle() {
  return TextStyle(fontSize: 15);
}

listSubTitle() {
  return TextStyle(fontSize: 12);
}

listTrailingTitle() {
  return TextStyle(fontSize: 14, color: appColor);
}

lightBlackText() {
  return TextStyle(fontSize: 12, color: Colors.black54);
}
