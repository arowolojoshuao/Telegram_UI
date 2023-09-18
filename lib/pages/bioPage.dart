
import 'package:flutter/material.dart';
import 'package:telegram_fluttermarketplace/utilities/constance.dart' as style;

class bioPage extends StatefulWidget {
  bioPage({Key? key}) : super(key: key);

  static const String pageId = 'bioPage';

  @override
  State<bioPage> createState() => _bioPageState();
}

class _bioPageState extends State<bioPage> {
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
            TextField(
              maxLength: 70,
              decoration: simpleTextInput('Bio'),
            ),
            SizedBox(height: 10),
            Text(
              'You can add a few lines about yourself. Anyone who opens your profile will see this text.',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  simpleTextInput(val) {
    return InputDecoration(
        hintText: '$val',
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        border: inputBox(),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 1, color: style.appColor)),
        enabledBorder: inputBox());
  }

  inputBox() {
    return UnderlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.grey.shade300));
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: style.itemColor,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: false,
      title: Text(
        'Bio',
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
