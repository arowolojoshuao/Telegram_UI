
import 'package:flutter/material.dart';
import 'package:telegram_fluttermarketplace/pages/addContactPage.dart';
import 'package:telegram_fluttermarketplace/pages/inviteFriendPage.dart';
import 'package:telegram_fluttermarketplace/utilities/constance.dart' as style;

class contactsPage extends StatefulWidget {
  contactsPage({Key? key}) : super(key: key);

  static const String pageId = 'contactsPage';

  @override
  State<contactsPage> createState() => _contactsPageState();
}

class _contactsPageState extends State<contactsPage> {
  List<Item> messages = <Item>[
    Item('Rahul Jograna', Colors.blue, 'last seen recently'),
    Item('Jaydeep Hirani', Colors.green, 'last seen within a month'),
    Item('Dodiya Saheb', Colors.lightGreen, 'last seen recently'),
    Item('Richa Jain', Colors.orange, 'last seen recently'),
    Item('Arjun Bhai', Colors.indigo, 'last seen recently'),
    Item('Nitushree', Colors.lightGreen, 'last seen at 4:17 PM'),
    Item('Bhargavi Shukla', Colors.teal, 'last seen at 4:15 PM'),
    Item('Mayank Boricha', Colors.lightGreen, 'last seen at 3:56 PM'),
    Item('hardik Rajput', Colors.red, 'last seen at 3:45 PM'),
    Item('Meet Dangar', Colors.indigo, 'last seen at 3:41 PM'),
    Item('Krishna Parmar', Colors.blue, 'last seen within a month'),
    Item('Ranveer Kapoor', Colors.green, 'last seen within a month'),
    Item('Deep Mavani', Colors.blueGrey, 'last seen within a month'),
    Item('Rahul Roy', Colors.teal, 'last seen recently'),
    Item('Jyoti', Colors.lightGreen, 'last seen at 3:37 PM'),
    Item('Om Mer', Colors.green, 'last seen at 3:30 PM'),
    Item('Shrikant', Colors.brown, 'last seen at 3:15 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => addContactPage()));
        },
        backgroundColor: style.itemColor,
        child: Icon(Icons.add, color: Colors.white),
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
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => inviteFriendPage()));
              },
              leading: Icon(Icons.perm_identity),
              title: Text('Invite Friends'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Find People Nearby'),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              color: Colors.grey[200],
              child: Text('Sorted by last seen time',
                  style:
                      TextStyle(fontFamily: 'medium', color: Colors.black54)),
            ),
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
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(e.name, style: style.nameText()),
                SizedBox(height: 3),
                Text(e.msg, style: style.smallgreyText()),
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
      title: Text('Contacts', style: style.pageTitle()),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.sort), onPressed: () {})
      ],
    );
  }
}

class Item {
  const Item(this.name, this.clr, this.msg);
  final String name;
  final Color clr;
  final String msg;
}
