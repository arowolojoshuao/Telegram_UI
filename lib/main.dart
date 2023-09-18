/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telegram_fluttermarketplace/pages/addContactPage.dart';
import 'package:telegram_fluttermarketplace/pages/bioPage.dart';
import 'package:telegram_fluttermarketplace/pages/callsPage.dart';
import 'package:telegram_fluttermarketplace/pages/chatSettingsPage.dart';
import 'package:telegram_fluttermarketplace/pages/contactsPage.dart';
import 'package:telegram_fluttermarketplace/pages/dataAndStoragepage.dart';
import 'package:telegram_fluttermarketplace/pages/devicesPage.dart';
import 'package:telegram_fluttermarketplace/pages/folderPage.dart';
import 'package:telegram_fluttermarketplace/pages/homePage.dart';
import 'package:telegram_fluttermarketplace/pages/inviteFriendPage.dart';
import 'package:telegram_fluttermarketplace/pages/languagePage.dart';
import 'package:telegram_fluttermarketplace/pages/messagePage.dart';
import 'package:telegram_fluttermarketplace/pages/newChannelPage.dart';
import 'package:telegram_fluttermarketplace/pages/newGroupPage.dart';
import 'package:telegram_fluttermarketplace/pages/newMessagePage.dart';
import 'package:telegram_fluttermarketplace/pages/newSecretChatPage.dart';
import 'package:telegram_fluttermarketplace/pages/notificationPage.dart';
import 'package:telegram_fluttermarketplace/pages/peopleNearbyPage.dart';
import 'package:telegram_fluttermarketplace/pages/privacyPage.dart';
import 'package:telegram_fluttermarketplace/pages/profileInfoPage.dart';
import 'package:telegram_fluttermarketplace/pages/savedMessagePage.dart';
import 'package:telegram_fluttermarketplace/pages/selectContactPage.dart';
import 'package:telegram_fluttermarketplace/pages/settingsPage.dart';
import 'package:telegram_fluttermarketplace/pages/sideMenuPage.dart';
import 'package:telegram_fluttermarketplace/pages/userNamePage.dart';
import 'package:telegram_fluttermarketplace/pages/verificationPage.dart';
import 'package:telegram_fluttermarketplace/pages/welcomePage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const telegram_fluttermarketplace());
}

class telegram_fluttermarketplace extends StatelessWidget {
  const telegram_fluttermarketplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram',
      theme: ThemeData(fontFamily: 'regular'),
      debugShowCheckedModeBanner: false,
      home: welcomePage(),
      routes: {
        welcomePage.pageId: (context) => welcomePage(),
        addContactPage.pageId: (context) => addContactPage(),
        bioPage.pageId: (context) => bioPage(),
        callsPage.pageId: (context) => callsPage(),
        chatSettingsPage.pageId: (context) => chatSettingsPage(),
        contactsPage.pageId: (context) => contactsPage(),
        dataAndStoragePage.pageId: (context) => dataAndStoragePage(),
        devicesPage.pageId: (context) => devicesPage(),
        folderPage.pageId: (context) => folderPage(),
        homePage.pageId: (context) => homePage(),
        inviteFriendPage.pageId: (context) => inviteFriendPage(),
        languagePage.pageId: (context) => languagePage(),
        messagePage.pageId: (context) => messagePage(),
        newChannelPage.pageId: (context) => newChannelPage(),
        newGroupPage.pageId: (context) => newGroupPage(),
        newMessagePage.pageId: (context) => newMessagePage(),
        newSecretChatPage.pageId: (context) => newSecretChatPage(),
        notificationPage.pageId: (context) => notificationPage(),
        peopleNearbyPage.pageId: (context) => peopleNearbyPage(),
        privacyPage.pageId: (context) => privacyPage(),
        profileInfoPage.pageId: (context) => profileInfoPage(),
        savedMessagePage.pageId: (context) => savedMessagePage(),
        selectContactPage.pageId: (context) => selectContactPage(),
        settingsPage.pageId: (context) => settingsPage(),
        sideMenuPage.pageId: (context) => sideMenuPage(),
        userNamePage.pageId: (context) => userNamePage(),
        verificationPage.pageId: (context) => verificationPage(),

        // total pages = 27
      },
    );
  }
}
