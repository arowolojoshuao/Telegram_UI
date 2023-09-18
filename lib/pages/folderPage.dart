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

class folderPage extends StatefulWidget {
  folderPage({Key? key}) : super(key: key);

  static const String pageId = 'folderPage';

  @override
  State<folderPage> createState() => _folderPageState();
}

class _folderPageState extends State<folderPage> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Image.asset('assets/images/folder.png', width: 80),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Create folder for different groups of chats and quickly swotch between them.',
                textAlign: TextAlign.center,
                style: style.lightBlackText(),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(Icons.add_circle, color: style.appColor),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Create New Folder',
                      style: TextStyle(color: style.appColor),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
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
        'Folder',
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
