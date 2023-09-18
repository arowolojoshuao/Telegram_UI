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

class dataAndStoragePage extends StatefulWidget {
  dataAndStoragePage({Key? key}) : super(key: key);

  static const String pageId = 'dataAndStoragePage';

  @override
  State<dataAndStoragePage> createState() => _dataAndStoragePageState();
}

class _dataAndStoragePageState extends State<dataAndStoragePage> {
  bool mobileData = false;
  bool wifi = false;
  bool roaming = false;
  bool gif = false;
  bool video = false;
  bool countUnread = false;
  bool streaming = true;

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
            _buildUsageContainer(),
            _buildDownloadContainer(),
            _buildAutoplayContainer(),
            Container(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Streaming', style: style.blueHeaderText()),
                  ListView(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    children: ListTile.divideTiles(context: context, tiles: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text('Streaming Videos and Audio Files',
                            style: style.listTitle()),
                        trailing: Switch(
                          value: streaming,
                          activeColor: style.appColor,
                          onChanged: (value) {
                            setState(() {
                              streaming = value;
                            });
                          },
                        ),
                      ),
                    ]).toList(),
                  )
                ],
              ),
            ),
            _buildCallsContainer(),
            Container(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Proxy', style: style.blueHeaderText()),
                  ListView(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    children: ListTile.divideTiles(context: context, tiles: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text('Proxy Settings', style: style.listTitle()),
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

  Widget _buildUsageContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Disk and network usage', style: style.blueHeaderText()),
          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Storage Usage', style: style.listTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Data Usage', style: style.listTitle()),
              ),
            ]).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildDownloadContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Automatic media download', style: style.blueHeaderText()),
          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('When using mobile data', style: style.listTitle()),
                subtitle: Text('No media', style: style.listSubTitle()),
                trailing: Switch(
                  value: mobileData,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      mobileData = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title:
                    Text('When connected on Wi-Fi', style: style.listTitle()),
                subtitle: Text('No media', style: style.listSubTitle()),
                trailing: Switch(
                  value: wifi,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      wifi = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('When roaming', style: style.listTitle()),
                subtitle: Text('No media', style: style.listSubTitle()),
                trailing: Switch(
                  value: roaming,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      roaming = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Reset Auto-Download Settings',
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
              ),
            ]).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildAutoplayContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Auto-play media', style: style.blueHeaderText()),
          ListView(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('GIFs', style: style.listTitle()),
                trailing: Switch(
                  value: gif,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      gif = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Videos', style: style.listTitle()),
                contentPadding: EdgeInsets.all(0),
                trailing: Switch(
                  value: video,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      video = value;
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
                title: Text('Less Data for Calls', style: style.listTitle()),
                trailing: Text('Only while Roaming',
                    style: style.listTrailingTitle()),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Respond with Text', style: style.listTitle()),
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
        'Data and Storage',
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
