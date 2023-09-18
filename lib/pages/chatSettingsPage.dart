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

class chatSettingsPage extends StatefulWidget {
  chatSettingsPage({Key? key}) : super(key: key);

  static const String pageId = 'chatSettingsPage';

  @override
  State<chatSettingsPage> createState() => _chatSettingsPageState();
}

class _chatSettingsPageState extends State<chatSettingsPage> {
  RangeValues textSize = const RangeValues(10, 40);
  RangeValues cornors = const RangeValues(10, 40);

  bool nightMode = false;
  bool inApp = true;
  bool share = true;
  bool animation = true;
  bool largeEmoji = true;
  bool speak = true;
  bool sendByEnter = false;
  bool saveGallery = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: style.backColor,
        appBar: _buildAppbar(),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Message text size', style: style.blueHeaderText()),
                  RangeSlider(
                    values: textSize,
                    min: 0,
                    max: 100,
                    divisions: 2,
                    activeColor: style.appColor,
                    inactiveColor: Colors.grey[300],
                    labels: RangeLabels(
                      textSize.start.round().toString(),
                      textSize.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        textSize = values;
                      });
                    },
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/ss.jpg'),
                    )),
                  ),
                  Text('Change Chat Background'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Color theme', style: style.blueHeaderText()),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Message Corners', style: style.blueHeaderText()),
                  RangeSlider(
                    values: cornors,
                    min: 0,
                    max: 100,
                    divisions: 2,
                    activeColor: style.appColor,
                    inactiveColor: Colors.grey[300],
                    labels: RangeLabels(
                      cornors.start.round().toString(),
                      cornors.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        cornors = values;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Chat list view', style: style.blueHeaderText()),
                ],
              ),
            ),
            _buildSettingsContainer(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              color: Colors.white,
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Stickers and Masks', style: style.listTitle()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsContainer() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Settings', style: style.blueHeaderText()),
          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Auto-Night Mode', style: style.listTitle()),
                subtitle: Text('off', style: style.listSubTitle()),
                trailing: Switch(
                  value: nightMode,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      nightMode = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('In-App Browser', style: style.listTitle()),
                subtitle: Text('Open external links within the app',
                    style: style.listSubTitle()),
                trailing: Switch(
                  value: inApp,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      inApp = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Direct Share', style: style.listTitle()),
                subtitle: Text('Show recent chats in Android share menu',
                    style: style.listSubTitle()),
                trailing: Switch(
                  value: share,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      share = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Enable Animations', style: style.listTitle()),
                trailing: Switch(
                  value: animation,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      animation = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Large Emoji', style: style.listTitle()),
                trailing: Switch(
                  value: largeEmoji,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      largeEmoji = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Raise to Speak', style: style.listTitle()),
                trailing: Switch(
                  value: speak,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      speak = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Send by Enter', style: style.listTitle()),
                trailing: Switch(
                  value: sendByEnter,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      sendByEnter = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Save to Gallery', style: style.listTitle()),
                trailing: Switch(
                  value: saveGallery,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      saveGallery = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Distance Units', style: style.listTitle()),
                trailing: Text('Automatic', style: style.listTrailingTitle()),
              ),
            ]).toList(),
          )
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
      titleSpacing: 0,
      title: Text(
        'Chat Settings',
        style: style.pageTitle(),
      ),
      actions: [IconButton(icon: Icon(Icons.more_vert), onPressed: () {})],
    );
  }
}

class Item {
  const Item(this.name, this.clr, this.msg);
  final String name;
  final Color clr;
  final String msg;
}
