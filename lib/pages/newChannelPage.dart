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

class newChannelPage extends StatefulWidget {
  newChannelPage({Key? key}) : super(key: key);

  static const String pageId = 'newChannelPage';

  @override
  State<newChannelPage> createState() => _newChannelPageState();
}

class _newChannelPageState extends State<newChannelPage> {
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
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      color: style.appColor,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                    child: TextField(
                  decoration: channelTextInput('Channel Name'),
                )),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: simpleTextInput('Description'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'You can provide an optional description for your channel.',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  channelTextInput(val) {
    return InputDecoration(
        hintText: '$val',
        suffixIcon: Icon(Icons.face),
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        border: inputBox(),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 1, color: style.appColor)),
        enabledBorder: inputBox());
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

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: style.itemColor,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: false,
      title: Text(
        'New Channel',
        style: style.pageTitle(),
      ),
      actions: [IconButton(icon: Icon(Icons.check), onPressed: () {})],
    );
  }
}

class Item {
  const Item(this.name, this.clr, this.msg);
  final String name;
  final Color clr;
  final String msg;
}
