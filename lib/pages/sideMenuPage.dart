/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:telegram_fluttermarketplace/pages/callsPage.dart';
import 'package:telegram_fluttermarketplace/pages/contactsPage.dart';
import 'package:telegram_fluttermarketplace/pages/inviteFriendPage.dart';
import 'package:telegram_fluttermarketplace/pages/newGroupPage.dart';
import 'package:telegram_fluttermarketplace/pages/peopleNearbyPage.dart';
import 'package:telegram_fluttermarketplace/pages/savedMessagePage.dart';
import 'package:telegram_fluttermarketplace/pages/settingsPage.dart';
import 'package:telegram_fluttermarketplace/utilities/constance.dart' as style;

class sideMenuPage extends StatefulWidget {
  sideMenuPage({Key? key}) : super(key: key);

  static const String pageId = 'sideMenuPage';

  @override
  State<sideMenuPage> createState() => _sideMenuPageState();
}

class _sideMenuPageState extends State<sideMenuPage> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return _openDrawer(context);
  }

  Widget _openDrawer(context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          _buildProfile(),
          isOpen == true
              ? Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: bottomBorder(),
                  child: ListView(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.all(0),
                    children: [
                      ListTile(
                        onTap: () {},
                        contentPadding: EdgeInsets.all(0),
                        leading: Stack(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  color: Colors.purple),
                              child: Center(
                                child: Text(
                                  'HR',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 3,
                                right: 3,
                                child: Container(
                                  padding: EdgeInsets.all(0.5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(100),
                                      ),
                                      color: Colors.white),
                                  child: Center(
                                      child: Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                    size: 18,
                                  )),
                                ))
                          ],
                        ),
                        title: Align(
                          alignment: Alignment(-1.05, 0),
                          child: Text('Hardik Rajput',
                              style: style.sidemenuTitle()),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        contentPadding: EdgeInsets.all(0),
                        leading: Icon(Icons.add, color: Colors.black26),
                        title:
                            Text('Add Account', style: style.sidemenuTitle()),
                      ),
                    ],
                  ),
                )
              : Container(height: 0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: bottomBorder(),
            child: ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              padding: EdgeInsets.all(0),
              children: [
                ListTile(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => newGroupPage()));
                  },
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.group_outlined, color: Colors.black26),
                  title: Text('New Group', style: style.sidemenuTitle()),
                ),
                ListTile(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => contactsPage()));
                  },
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.perm_identity, color: Colors.black26),
                  title: Text('Contacts', style: style.sidemenuTitle()),
                ),
                ListTile(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => callsPage()));
                  },
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.call_outlined, color: Colors.black26),
                  title: Text('Calls', style: style.sidemenuTitle()),
                ),
                ListTile(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => peopleNearbyPage()));
                  },
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.near_me, color: Colors.black26),
                  title: Text('People Nearby', style: style.sidemenuTitle()),
                ),
                ListTile(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => savedMessagePage()));
                  },
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.bookmark_border, color: Colors.black26),
                  title: Text('Saved Messages', style: style.sidemenuTitle()),
                ),
                ListTile(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => settingsPage()));
                  },
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.settings, color: Colors.black26),
                  title: Text('Settings', style: style.sidemenuTitle()),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(0),
              children: [
                ListTile(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => inviteFriendPage()));
                  },
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.person_add_alt, color: Colors.black26),
                  title: Text('Invite Friends', style: style.sidemenuTitle()),
                ),
                ListTile(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.help_outline, color: Colors.black26),
                  title: Text('Telegram FAQ', style: style.sidemenuTitle()),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      height: 160,
      child: DrawerHeader(
        decoration: BoxDecoration(
          color: Color.fromARGB(220, 90, 143, 187),
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 80, 133, 177)),
                  child: Center(
                    child: Text(
                      'HR',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'medium',
                          fontSize: 20),
                    ),
                  ),
                ),
                InkWell(
                  child: Icon(Icons.dark_mode, color: Colors.white),
                )
              ],
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                setState(() {
                  isOpen = !isOpen;
                });
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Hardik Rajput',
                              style: TextStyle(
                                  fontFamily: 'medium', color: Colors.white)),
                          Text('+91 8464646456',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 13)),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                      isOpen == false
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      color: Colors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  bottomBorder() {
    return BoxDecoration(
        border:
            Border(bottom: BorderSide(width: 1, color: Colors.grey.shade300)));
  }
}
