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

class notificationPage extends StatefulWidget {
  notificationPage({Key? key}) : super(key: key);

  static const String pageId = 'notificationPage';

  @override
  State<notificationPage> createState() => _notificationPageState();
}

class _notificationPageState extends State<notificationPage> {
  bool privateChat = false;
  bool groups = false;
  bool channels = false;

  bool enable = false;
  bool muteChat = false;
  bool countUnread = false;

  bool appSound = true;
  bool appVibrate = true;
  bool appPreview = true;
  bool chatSound = true;
  bool imp = false;

  bool joined = false;
  bool pinned = false;

  bool keepAlive = false;
  bool connection = false;
  bool reset = false;

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
            _buildNotificationContainer(),
            _buildCallsContainer(),
            _buildCounterContainer(),
            _buildInAppContainer(),
            _buildEventContainer(),
            _buildOtherContainer(),
            Container(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Reset', style: style.blueHeaderText()),
                  ListView(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    children: ListTile.divideTiles(context: context, tiles: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text('Reset All Notifications',
                            style: style.listTitle()),
                        subtitle: Text(
                            'Undo all custom notification settings for all your contacts, groups and channnels.',
                            style: style.listSubTitle()),
                        trailing: Switch(
                          value: reset,
                          activeColor: style.appColor,
                          onChanged: (value) {
                            setState(() {
                              reset = value;
                            });
                          },
                        ),
                      ),
                    ]).toList(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Notifications for chats', style: style.blueHeaderText()),
          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Private Chats', style: style.listTitle()),
                subtitle:
                    Text('On, 2 expectations', style: style.listSubTitle()),
                trailing: Switch(
                  value: privateChat,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      privateChat = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Groups', style: style.listTitle()),
                subtitle: Text('Tap to change', style: style.listSubTitle()),
                trailing: Switch(
                  value: groups,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      groups = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Channels', style: style.listTitle()),
                subtitle:
                    Text('On, 13 expectations', style: style.listSubTitle()),
                trailing: Switch(
                  value: channels,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      channels = value;
                    });
                  },
                ),
              ),
            ]).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildCallsContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Calls', style: style.blueHeaderText()),
          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Vibrate', style: style.listTitle()),
                trailing: Text('Default', style: style.listTrailingTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Ringtone', style: style.listTitle()),
                trailing: Text('Default', style: style.listTrailingTitle()),
              ),
            ]).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildCounterContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Badge Counter', style: style.blueHeaderText()),
          ListView(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Enabled', style: style.listTitle()),
                trailing: Switch(
                  value: enable,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      enable = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Include Muted Chats', style: style.listTitle()),
                trailing: Switch(
                  value: muteChat,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      muteChat = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Count Unread Messages', style: style.listTitle()),
                trailing: Switch(
                  value: countUnread,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      countUnread = value;
                    });
                  },
                ),
              ),
            ]).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildInAppContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('In-app notifications', style: style.blueHeaderText()),
          ListView(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('In-App Sounds', style: style.listTitle()),
                trailing: Switch(
                  value: appSound,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      appSound = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('In-App Vibrate', style: style.listTitle()),
                trailing: Switch(
                  value: appVibrate,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      appVibrate = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('In-App Preview', style: style.listTitle()),
                trailing: Switch(
                  value: appPreview,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      appPreview = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('In-Chat Sounds', style: style.listTitle()),
                trailing: Switch(
                  value: chatSound,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      chatSound = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Importance', style: style.listTitle()),
                trailing: Switch(
                  value: imp,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      imp = value;
                    });
                  },
                ),
              ),
            ]).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildEventContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Events', style: style.blueHeaderText()),
          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title:
                    Text('Contact joined Telegram', style: style.listTitle()),
                trailing: Switch(
                  value: joined,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      joined = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Pinned Messages', style: style.listTitle()),
                trailing: Switch(
                  value: pinned,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      pinned = value;
                    });
                  },
                ),
              ),
            ]).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildOtherContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Other', style: style.blueHeaderText()),
          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                title: Text('Keep-Alive Service', style: style.listTitle()),
                subtitle: Text(
                    'Relaunch app when shut down. Enable for reliable notifications.',
                    style: style.listSubTitle()),
                trailing: Switch(
                  value: keepAlive,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      keepAlive = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                title: Text('Background Connection', style: style.listTitle()),
                subtitle: Text(
                    'Keep a low impact background connection to Telegram for reliable notifications.',
                    style: style.listSubTitle()),
                trailing: Switch(
                  value: connection,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      connection = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Repeat Notifications', style: style.listTitle()),
                trailing: Text('1 hour', style: style.listTrailingTitle()),
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
        'Notifications and Sounds',
        style: style.pageTitle(),
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
