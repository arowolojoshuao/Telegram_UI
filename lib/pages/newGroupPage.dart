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

class newGroupPage extends StatefulWidget {
  newGroupPage({Key? key}) : super(key: key);

  static const String pageId = 'newGroupPage';

  @override
  State<newGroupPage> createState() => _newGroupPageState();
}

class _newGroupPageState extends State<newGroupPage> {
  List<Item> messages = <Item>[
    Item('Rahul Jograna', Colors.blue, 'last seen recently'),
    Item('Jaydeep Hirani', Colors.green, 'last seen within a month'),
    Item('Dodiya Saheb', Colors.lightGreen, 'last seen recently'),
    Item('Richa Jain', Colors.orange, 'last seen recently'),
    Item('Arjun Bhai', Colors.indigo, 'last seen recently'),
    Item('Nitushree', Colors.lightGreen, 'last seen at 4:17 PM'),
    Item('Bhargavi Shukla', Colors.teal, 'last seen at 4:15 PM'),
    Item('Mayank Boricha', Colors.lightGreen, 'last seen at 3:56 PM'),
    Item('hardik Rajput', Colors.red, 'last seen at 3:45 PM'),
    Item('Meet Dangar', Colors.indigo, 'last seen at 3:41 PM'),
    Item('Krishna Parmar', Colors.blue, 'last seen within a month'),
    Item('Ranveer Kapoor', Colors.green, 'last seen within a month'),
    Item('Deep Mavani', Colors.blueGrey, 'last seen within a month'),
    Item('Rahul Roy', Colors.teal, 'last seen recently'),
    Item('Jyoti', Colors.lightGreen, 'last seen at 3:37 PM'),
    Item('Om Mer', Colors.green, 'last seen at 3:30 PM'),
    Item('Shrikant', Colors.brown, 'last seen at 3:15 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
            decoration: style.simpleTextInput('Add People...'),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New Group',
            style: style.pageTitle(),
          ),
          Text(
            'up to 200000 members',
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        ],
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
