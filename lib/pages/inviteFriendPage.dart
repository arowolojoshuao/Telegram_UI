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

class inviteFriendPage extends StatefulWidget {
  inviteFriendPage({Key? key}) : super(key: key);

  static const String pageId = 'inviteFriendPage';

  @override
  State<inviteFriendPage> createState() => _inviteFriendPageState();
}

class _inviteFriendPageState extends State<inviteFriendPage> {
  List<Item> messages = <Item>[
    Item('Rahul Jograna', Colors.blue, '+91 9876543212'),
    Item('Jaydeep Hirani', Colors.green, '+91 9876543212'),
    Item('Dodiya Saheb', Colors.lightGreen, '+91 9876543212'),
    Item('Richa Jain', Colors.orange, '+91 9876543212'),
    Item('Arjun Bhai', Colors.indigo, '+91 9876543212'),
    Item('Nitushree', Colors.lightGreen, '+91 9876543212'),
    Item('Bhargavi Shukla', Colors.teal, '+91 9876543212'),
    Item('Mayank Boricha', Colors.lightGreen, '+91 9876543212'),
    Item('hardik Rajput', Colors.red, '+91 9876543212'),
    Item('Meet Dangar', Colors.indigo, '+91 9876543212'),
    Item('Krishna Parmar', Colors.blue, '+91 9876543212'),
    Item('Ranveer Kapoor', Colors.green, '+91 9876543212'),
    Item('Deep Mavani', Colors.blueGrey, '+91 9876543212'),
    Item('Rahul Roy', Colors.teal, '+91 9876543212'),
    Item('Jyoti', Colors.lightGreen, '+91 9876543212'),
    Item('Om Mer', Colors.green, '+91 9876543212'),
    Item('Shrikant', Colors.brown, '+91 9876543212'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Container(
        color: Colors.green[400],
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text(
          'Select contacts to invite them to Telegram',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontFamily: 'medium'),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              height: 70,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(right: 16),
                    child: Center(
                      child: Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    height: 70,
                    decoration: style.bottomBorder(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Share Telegram...',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              children: messages.map((e) {
                return _buildBox(e);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(e) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(right: 16),
            decoration: style.avatarBox(e.clr),
            child: Center(
              child: Text(
                e.name[0],
                style: style.avatarText(),
              ),
            ),
          ),
          Expanded(
              child: Container(
            height: 70,
            decoration: style.bottomBorder(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(e.name, style: style.nameText()),
                SizedBox(height: 3),
                Text(e.msg, style: style.smallgreyText()),
              ],
            ),
          )),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: style.itemColor,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: false,
      title: Text(
        'Invite Friends',
        style: style.pageTitle(),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 3.0,
                color: Colors.grey.shade300,
                offset: Offset(0, 3.0),
              ),
            ],
          ),
          child: TextField(
            decoration: style.simpleTextInput('Search Contacts...'),
          ),
        ),
      ),
    );
  }
}

class Item {
  const Item(this.name, this.clr, this.msg);
  final String name;
  final Color clr;
  final String msg;
}
