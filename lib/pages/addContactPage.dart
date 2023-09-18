
import 'package:flutter/material.dart';
import 'package:telegram_fluttermarketplace/utilities/constance.dart' as style;

class addContactPage extends StatefulWidget {
  addContactPage({Key? key}) : super(key: key);

  static const String pageId = 'addContactPage';

  @override
  State<addContactPage> createState() => _addContactPageState();
}

class _addContactPageState extends State<addContactPage> {
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
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      color: style.appColor,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
                Expanded(
                    child: Column(
                  children: [
                    TextField(
                      decoration:
                          style.simpleTextInput('First Name (Required)'),
                    ),
                    TextField(
                      decoration: style.simpleTextInput('Last Name (Optional)'),
                    ),
                  ],
                )),
              ],
            ),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              decoration: style.bottomBorder(),
              child: Text('India'),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: style.simpleTextInput('+91'),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  flex: 10,
                  child: TextField(
                    decoration: style.simpleTextInput('----- -----'),
                  ),
                ),
              ],
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
      title: Text(
        'Add Contact',
        style: style.pageTitle(),
      ),
      actions: [IconButton(icon: Icon(Icons.check), onPressed: () {})],
    );
  }
}

class Item {
  const Item(this.name, this.clr, this.msg);
  final String name;
  final Color clr;
  final String msg;
}
