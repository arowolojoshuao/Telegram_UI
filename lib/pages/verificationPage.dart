/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:telegram_fluttermarketplace/pages/profileInfoPage.dart';
import 'package:telegram_fluttermarketplace/utilities/constance.dart' as style;

class verificationPage extends StatefulWidget {
  verificationPage({Key? key}) : super(key: key);

  static const String pageId = 'verificationPage';

  @override
  State<verificationPage> createState() => _verificationPageState();
}

class _verificationPageState extends State<verificationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Your Phone Number',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'bold', fontSize: 25),
        ),
        Text(
          'Please confirm your country code and \nenter your phone number.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        _buildInputContent('Country'),
        _buildInputContent('Phone Number'),
      ],
    );
  }

  Widget _buildInputContent(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
            labelText: '$txt',
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: style.appColor),
              borderRadius: BorderRadius.circular(5),
            )),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return SingleChildScrollView(
      reverse: true,
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profileInfoPage()));
              },
              backgroundColor: style.appColor,
              child: const Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}
