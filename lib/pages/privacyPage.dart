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

class privacyPage extends StatefulWidget {
  privacyPage({Key? key}) : super(key: key);

  static const String pageId = 'privacyPage';

  @override
  State<privacyPage> createState() => _privacyPageState();
}

class _privacyPageState extends State<privacyPage> {
  bool synced = false;
  bool suggestSynced = false;
  bool preview = false;

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
            _buildPrivacyContainer(),
            Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Text('Change who can add you to groups and channels.',
                  style: style.lightBlackText()),
            ),
            _buildSecurityContainer(),
            Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Text('Control your sessions on other devices.',
                  style: style.lightBlackText()),
            ),
            _buildAdvanceContainer(),
            Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Text(
                  'If you do not come online at least once within this period, '
                  'your account will be deleted along with all messages and Contacts.',
                  style: style.lightBlackText()),
            ),
            _buildWebsitesContainer(),
            Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Text('Websites where you used to Telegram to log in.',
                  style: style.lightBlackText()),
            ),
            _buildContactsContainer(),
            Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Text(
                  'Display people you message frequently at the top of the search section for quick access.',
                  style: style.lightBlackText()),
            ),
            _buildSecterChatsContainer(),
            Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Text(
                  'Link previews will be generated on Telegram servers. We do not store data about the links you send',
                  style: style.lightBlackText()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrivacyContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Privacy', style: style.blueHeaderText()),
          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Blocked User', style: style.listTitle()),
                trailing: Text('None', style: style.listTrailingTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Phone Number', style: style.listTitle()),
                trailing: Text('Everybody', style: style.listTrailingTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Last seen & Online', style: style.listTitle()),
                trailing: Text('Nobody', style: style.listTrailingTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Profile Photos', style: style.listTitle()),
                trailing: Text('Everybody', style: style.listTrailingTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Forwarded Messages', style: style.listTitle()),
                trailing: Text('Nobody', style: style.listTrailingTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Calls', style: style.listTitle()),
                trailing: Text('My Contacts', style: style.listTrailingTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Groups', style: style.listTitle()),
                trailing: Text('My Contacts', style: style.listTrailingTitle()),
              ),
            ]).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildSecurityContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Security', style: style.blueHeaderText()),
          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Passcode Lock', style: style.listTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Two-Step Verification', style: style.listTitle()),
                trailing: Text('On', style: style.listTrailingTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Active Sessions', style: style.listTitle()),
              ),
            ]).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildAdvanceContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Advanced', style: style.blueHeaderText()),
          ListView(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title:
                    Text('Delete All Cloud Drafts', style: style.listTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Delete my account if away for',
                    style: style.listTitle()),
                trailing: Text('6 months', style: style.listTrailingTitle()),
              ),
            ]).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildWebsitesContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Bots and websites', style: style.blueHeaderText()),
          ListView(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Clear Payment and Shipping Info',
                    style: style.listTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title:
                    Text('Logged In with Telegram', style: style.listTitle()),
              ),
            ]).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildContactsContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contacts', style: style.blueHeaderText()),
          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Delete Synced Contacts', style: style.listTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Synced Contacts', style: style.listTitle()),
                trailing: Switch(
                  value: synced,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      synced = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title:
                    Text('Suggest Frequent Contacts', style: style.listTitle()),
                trailing: Switch(
                  value: suggestSynced,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      suggestSynced = value;
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

  Widget _buildSecterChatsContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Secret Chats', style: style.blueHeaderText()),
          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Map Preview Provider', style: style.listTitle()),
                trailing: Text('No Previews', style: style.listTrailingTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Link Previews', style: style.listTitle()),
                trailing: Switch(
                  value: preview,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      preview = value;
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

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: style.itemColor,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: false,
      titleSpacing: 0,
      title: Text(
        'Privacy and Security',
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
