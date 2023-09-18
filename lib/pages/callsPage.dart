
import 'package:flutter/material.dart';
import 'package:telegram_fluttermarketplace/pages/selectContactPage.dart';
import 'package:telegram_fluttermarketplace/utilities/constance.dart' as style;

class callsPage extends StatefulWidget {
  callsPage({Key? key}) : super(key: key);

  static const String pageId = 'callsPage';

  @override
  State<callsPage> createState() => _callsPageState();
}

class _callsPageState extends State<callsPage> {
  List<Item> messages = <Item>[
    Item('Hardik Rajput', Colors.blue, 'make'),
    Item('Shailly Acharya', Colors.green, 'decline'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: style.itemColor,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => selectContactPage()));
        },
        child: Icon(Icons.call, color: Colors.white),
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
            ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              children: messages.map((e) {
                return _buildBox(e);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(e) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
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
            decoration: style.bottomBorder(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(e.name, style: style.nameText()),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        e.status == 'make'
                            ? Icon(Icons.call_made,
                                size: 16, color: Colors.green)
                            : Icon(Icons.call_received,
                                size: 16, color: Colors.red),
                        SizedBox(width: 5),
                        Text(
                          '2.42 PM',
                          style: style.smallgreyText(),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.call, color: style.itemColor)
              ],
            ),
          )),
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
      title: Text(
        'Calls',
        style: style.pageTitle(),
      ),
    );
  }
}

class Item {
  const Item(this.name, this.clr, this.status);
  final String name;
  final Color clr;
  final String status;
}
