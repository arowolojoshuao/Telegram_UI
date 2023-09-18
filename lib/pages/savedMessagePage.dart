/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:telegram_fluttermarketplace/utilities/constance.dart' as style;

class savedMessagePage extends StatefulWidget {
  savedMessagePage({Key? key}) : super(key: key);

  static const String pageId = 'savedMessagePage';

  @override
  State<savedMessagePage> createState() => _savedMessagePageState();
}

class _savedMessagePageState extends State<savedMessagePage> {
  List menuItems = [
    {'name': 'Hardik1', 'icn': Icon(Icons.search)},
    {'name': 'Hardik1', 'icn': Icon(Icons.search)},
    {'name': 'Hardik1', 'icn': Icon(Icons.search)},
    {'name': 'Hardik1', 'icn': Icon(Icons.search)},
    {'name': 'Hardik1', 'icn': Icon(Icons.search)},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 208, 217, 225),
        appBar: _buildAppbar(),
        body: _buildBody(),
        bottomNavigationBar: _buildbottomNavigationBar(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        children: <Widget>[
          _leftMessage('Hello'),
          _rightMessage('Hii'),
          _leftMessage('Are you nearby ?'),
          _rightMessage('I will be there in few minutes.'),
          _leftMessage('Ok, I am waiting at vinmark store'),
          _rightMessage(
              'Sorry I am stuck in traffic. Please give me a moment.'),
          _leftMessage('Hello'),
          _rightMessage('Hii'),
          _leftMessage('Are you nearby ?'),
          _rightMessage('I will be there in few minutes.'),
          _leftMessage('Ok, I am waiting at vinmark store'),
          _rightMessage('Sorry I am stuck in traffic. Please give me a moment.')
        ],
      ),
    );
  }

  Widget _leftMessage(val) {
    return Bubble(
      margin: BubbleEdges.only(bottom: 20, right: 50),
      alignment: Alignment.topLeft,
      nip: BubbleNip.leftBottom,
      color: Colors.white,
      child: Text(
        '$val',
        style: TextStyle(fontSize: 14),
      ),
    );
  }

  Widget _rightMessage(val) {
    return Bubble(
      margin: BubbleEdges.only(left: 50, bottom: 20),
      alignment: Alignment.topRight,
      nip: BubbleNip.rightBottom,
      color: Color.fromARGB(255, 239, 254, 221),
      child: Text(
        '$val',
        style: TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: style.itemColor,
      iconTheme: IconThemeData(color: Colors.white),
      titleSpacing: 0,
      centerTitle: false,
      title: Container(
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: style.appColor,
              child: Icon(
                Icons.bookmark_border,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Saved Messages',
              style: TextStyle(fontSize: 16, fontFamily: 'medium'),
            )
          ],
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            )),
        PopupMenuButton(
            padding: EdgeInsets.all(0),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.clear_all_outlined,
                          color: Colors.grey.shade500,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Clear History',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ],
                    ),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.brush_outlined,
                          color: Colors.grey.shade500,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Change Colors',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ],
                    ),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.delete_outline,
                          color: Colors.grey.shade500,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Delete Chat',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ],
                    ),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_to_home_screen,
                          color: Colors.grey.shade500,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Add to Home Screen',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ],
                    ),
                    value: 1,
                  ),
                ]),
      ],
    );
  }

  Widget _buildbottomNavigationBar() {
    return SingleChildScrollView(
      reverse: true,
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            InkWell(
              child: Container(
                height: 35,
                width: 35,
                child: Icon(
                  Icons.face,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Message..'),
              ),
            ),
            InkWell(
              child: Container(
                height: 35,
                width: 35,
                child: Icon(
                  Icons.attach_file,
                  color: Colors.grey,
                ),
              ),
            ),
            InkWell(
              child: Container(
                height: 35,
                width: 35,
                child: Icon(
                  Icons.mic,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  menuText() {
    return TextStyle(fontSize: 14);
  }
}
