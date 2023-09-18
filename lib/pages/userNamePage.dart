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

class userNamePage extends StatefulWidget {
  userNamePage({Key? key}) : super(key: key);

  static const String pageId = 'userNamePage';

  @override
  State<userNamePage> createState() => _userNamePageState();
}

class _userNamePageState extends State<userNamePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppbar(),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: simpleTextInput('Your Username'),
            ),
            SizedBox(height: 10),
            Text(
              'You can choose a username on Telegram. If you do, people will be able to find you by this username and contact you without needing your phone number.',
              style: greyText(),
            ),
            SizedBox(height: 10),
            Text(
              'You can use a-z, 0-9 and underscores. Minimum length is 5 characters.',
              style: greyText(),
            ),
          ],
        ),
      ),
    );
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

  greyText() {
    return TextStyle(fontSize: 14, color: Colors.grey);
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: style.itemColor,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: false,
      title: Text(
        'Username',
        style: style.pageTitle(),
      ),
      actions: [IconButton(icon: Icon(Icons.check), onPressed: () {})],
    );
  }
}
