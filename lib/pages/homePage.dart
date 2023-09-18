/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:telegram_fluttermarketplace/pages/messagePage.dart';
import 'package:telegram_fluttermarketplace/pages/newMessagePage.dart';
import 'package:telegram_fluttermarketplace/pages/sideMenuPage.dart';
import 'package:telegram_fluttermarketplace/utilities/constance.dart' as style;

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  static const String pageId = 'homePage';

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<Item> messages = <Item>[
    Item('Rahul Jograna', Colors.blue, 'last seen at 4:18 PM'),
    Item('Jaydeep Hirani', Colors.green, ''),
    Item('Dodiya Saheb', Colors.lightGreen, ''),
    Item('Richa Jain', Colors.orange, 'last seen at 4:18 PM'),
    Item('Arjun Bhai', Colors.indigo, ''),
    Item('Nitushree', Colors.lightGreen, 'last seen at 4:18 PM'),
    Item('Bhargavi Shukla', Colors.teal, 'last seen at 4:18 PM'),
    Item('Mayank Boricha', Colors.lightGreen, ''),
    Item('hardik Rajput', Colors.red, ''),
    Item('Meet Dangar', Colors.indigo, 'last seen at 4:18 PM'),
    Item('Krishna Parmar', Colors.blue, ''),
    Item('Ranveer Kapoor', Colors.green, ''),
    Item('Deep Mavani', Colors.blueGrey, 'last seen at 4:18 PM'),
    Item('Rahul Roy', Colors.teal, ''),
    Item('Jyoti', Colors.lightGreen, ''),
    Item('Om Mer', Colors.green, ''),
    Item('Shrikant', Colors.brown, 'last seen at 4:18 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        drawerEnableOpenDragGesture: false,
        drawer: sideMenuPage(),
        appBar: _buildAppbar(),
        body: _buildBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: style.itemColor,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => newMessagePage()));
          },
          child: Icon(Icons.edit, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.grey.shade500,
                  offset: Offset(0, 3.0),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 70,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/w3.gif'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Welcome to Telegram',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'bold', fontSize: 17),
                  ),
                ),
                Text(
                  'start messaging by tapping the pencil button in the bottom right corner.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.grey.shade500,
                  offset: Offset(3.0, 0),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    'Your Contact on Telegram',
                    style: TextStyle(
                        color: style.appColor,
                        fontFamily: 'bold',
                        fontSize: 15),
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
          ),
        ],
      ),
    );
  }

  Widget _buildBox(e) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => messagePage()));
      },
      child: Container(
        height: 70,
        child: Row(
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(right: 16),
              decoration: style.avatarBox(e.clr),
              child: Center(
                child: Text(e.name[0], style: style.avatarText()),
              ),
            ),
            Expanded(
                child: Container(
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(e.name, style: style.nameText()),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  e.msg == ''
                      ? Text(
                          'online',
                          style: style.smallblueText(),
                        )
                      : Text(
                          e.msg,
                          style: style.smallgreyText(),
                        ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: style.itemColor,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
      ),
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: false,
      title: Text(
        'Telegram',
        style: style.pageTitle(),
      ),
      actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
    );
  }
}

class Item {
  const Item(this.name, this.clr, this.msg);
  final String name;
  final Color clr;
  final String msg;
}
