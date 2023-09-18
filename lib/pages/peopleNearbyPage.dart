/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:telegram_fluttermarketplace/pages/contactsPage.dart';
import 'package:telegram_fluttermarketplace/utilities/constance.dart' as style;

class peopleNearbyPage extends StatefulWidget {
  peopleNearbyPage({Key? key}) : super(key: key);

  static const String pageId = 'peopleNearbyPage';

  @override
  State<peopleNearbyPage> createState() => _peopleNearbyPageState();
}

class _peopleNearbyPageState extends State<peopleNearbyPage> {
  List<Item> messages = <Item>[
    Item('Rahul Jograna', Colors.blue, '500 m away'),
    Item('Jaydeep Hirani', Colors.green, '500 m away'),
    Item('Dodiya Saheb', Colors.lightGreen, '500 m away'),
    Item('Richa Jain', Colors.orange, '500 m away'),
    Item('Arjun Bhai', Colors.indigo, '500 m away'),
  ];

  List<Item> messages2 = <Item>[
    Item('Rahul Jograna', Colors.blue, '1 km away, 62 members'),
    Item('Jaydeep Hirani', Colors.green, '500 m away, 7 members'),
    Item('Dodiya Saheb', Colors.lightGreen, '500 m away, 2 members'),
    Item('Richa Jain', Colors.orange, '1 km away, 11 members'),
    Item('Arjun Bhai', Colors.indigo, '500 m away, 1 members'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawerEnableOpenDragGesture: false,
        appBar: _buildAppbar(),
        body: _buildBody(),
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
                      image: AssetImage('assets/images/w4.gif'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'People Nearby',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'bold', fontSize: 17),
                  ),
                ),
                Text(
                  'Exchange contact info with people nearby and find new friends.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 10, bottom: 10),
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
                    'People Nearby',
                    style: TextStyle(
                        color: style.appColor,
                        fontFamily: 'bold',
                        fontSize: 15),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.person, color: style.appColor)),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey.shade300),
                            ),
                          ),
                          child: Text(
                            'Make Myself Visible',
                            style: TextStyle(color: style.appColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListView(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    children: messages.map((e) {
                      return _buildBox(e);
                    }).toList(),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_down,
                                color: style.appColor)),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(),
                          child: Text(
                            'Show More (36)',
                            style: TextStyle(color: style.appColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
                    'Group Nearby',
                    style: TextStyle(
                        color: style.appColor,
                        fontFamily: 'bold',
                        fontSize: 15),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.people, color: style.appColor)),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey.shade300),
                            ),
                          ),
                          child: Text(
                            'Create a Local Group',
                            style: TextStyle(color: style.appColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListView(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    children: messages2.map((e) {
                      return _buildBox(e);
                    }).toList(),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_down,
                                color: style.appColor)),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(),
                          child: Text(
                            'Show More (36)',
                            style: TextStyle(color: style.appColor),
                          ),
                        ),
                      ),
                    ],
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
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => messagePage()));
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
                  Text(
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
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: false,
    );
  }
}

class Item {
  const Item(this.name, this.clr, this.msg);
  final String name;
  final Color clr;
  final String msg;
}
