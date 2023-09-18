/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:telegram_fluttermarketplace/pages/bioPage.dart';
import 'package:telegram_fluttermarketplace/pages/chatSettingsPage.dart';
import 'package:telegram_fluttermarketplace/pages/contactsPage.dart';
import 'package:telegram_fluttermarketplace/pages/dataAndStoragepage.dart';
import 'package:telegram_fluttermarketplace/pages/devicesPage.dart';
import 'package:telegram_fluttermarketplace/pages/folderPage.dart';
import 'package:telegram_fluttermarketplace/pages/languagePage.dart';
import 'package:telegram_fluttermarketplace/pages/notificationPage.dart';
import 'package:telegram_fluttermarketplace/pages/privacyPage.dart';
import 'package:telegram_fluttermarketplace/pages/userNamePage.dart';
import 'package:telegram_fluttermarketplace/utilities/constance.dart' as style;

class settingsPage extends StatefulWidget {
  settingsPage({Key? key}) : super(key: key);

  static const String pageId = 'settingsPage';

  @override
  State<settingsPage> createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.grey[200],
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 16, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Account', style: style.blueHeaderText()),
                  ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text('+91 9876873212', style: titleText()),
                      subtitle: Text('Tap to change phone number',
                          style: subTitleText())),
                  Divider(height: 0),
                  ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => userNamePage()));
                      },
                      contentPadding: EdgeInsets.all(0),
                      title: Text('None', style: titleText()),
                      subtitle: Text('Username', style: subTitleText())),
                  Divider(height: 0),
                  ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => bioPage()));
                      },
                      contentPadding: EdgeInsets.all(0),
                      title: Text('Bio', style: titleText()),
                      subtitle: Text('Add a few words about yourself',
                          style: subTitleText())),
                ],
              ),
            ),
            Container(
              color: Colors.grey[200],
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Settings', style: style.blueHeaderText()),
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => notificationPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.notifications_none, color: Colors.grey),
                          SizedBox(width: 16),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            decoration: style.bottomBorder(),
                            child: Text('Notifications and Sounds'),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => privacyPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.lock_outline, color: Colors.grey),
                          SizedBox(width: 16),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            decoration: style.bottomBorder(),
                            child: Text('Privacy and Security'),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => dataAndStoragePage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.watch_later_outlined, color: Colors.grey),
                          SizedBox(width: 16),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            decoration: style.bottomBorder(),
                            child: Text('Data and Storage'),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatSettingsPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.chat_bubble_outline, color: Colors.grey),
                          SizedBox(width: 16),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            decoration: style.bottomBorder(),
                            child: Text('Chat Settings'),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => folderPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.folder_open, color: Colors.grey),
                          SizedBox(width: 16),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            decoration: style.bottomBorder(),
                            child: Text('Folder'),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => devicesPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.laptop, color: Colors.grey),
                          SizedBox(width: 16),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            decoration: style.bottomBorder(),
                            child: Text('Devices'),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => languagePage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.language, color: Colors.grey),
                          SizedBox(width: 16),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Text('Languages'),
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey[200],
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Help', style: style.blueHeaderText()),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.chat_bubble_outline, color: Colors.grey),
                        SizedBox(width: 16),
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: style.bottomBorder(),
                          child: Text('Ask a Questions'),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.help_outline, color: Colors.grey),
                        SizedBox(width: 16),
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: style.bottomBorder(),
                          child: Text('Telegram FAQ'),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.verified_user_outlined, color: Colors.grey),
                        SizedBox(width: 16),
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: style.bottomBorder(),
                          child: Text('Privacy Policy'),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  titleText() {
    return TextStyle(fontSize: 14);
  }

  subTitleText() {
    return TextStyle(fontSize: 12, color: Colors.grey);
  }

  PreferredSizeWidget _buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(200),
      child: AppBar(
        backgroundColor: Color.fromARGB(220, 90, 143, 187),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Color.fromARGB(255, 80, 133, 177)),
                    child: Center(
                      child: Text('H', style: style.avatarText()),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hardik',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'semi-bold'),
                      ),
                      Text(
                        'Online',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.camera_alt,
                    color: style.appColor,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Set Profile Photo',
                    style: TextStyle(color: style.appColor),
                  ),
                ],
              ),
            ),
          ],
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
