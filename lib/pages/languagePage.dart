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

class languagePage extends StatefulWidget {
  languagePage({Key? key}) : super(key: key);

  static const String pageId = 'languagePage';

  @override
  State<languagePage> createState() => _languagePageState();
}

class _languagePageState extends State<languagePage> {
  String curLang = 'English';
  List _elements = [
    {'lan1': 'English', 'lan2': 'English'},
    {'lan1': 'Arabic', 'lan2': 'عربى'},
    {'lan1': 'Belarusian', 'lan2': 'Беларуская'},
    {'lan1': 'Catalan', 'lan2': 'Català'},
    {'lan1': 'Dutch', 'lan2': 'Nederlands'},
    {'lan1': 'French', 'lan2': 'français'},
    {'lan1': 'German', 'lan2': 'Deutsche'},
    {'lan1': 'Indonesian', 'lan2': 'bahasa Indonesia'},
    {'lan1': 'Italian', 'lan2': 'Italian'},
    {'lan1': 'Korean', 'lan2': '한국어'},
    {'lan1': 'Malay', 'lan2': 'Bahasa Melayu'},
    {'lan1': 'Persian', 'lan2': 'فارسی'},
    {'lan1': 'Polish', 'lan2': 'Polskie'},
    {'lan1': 'Portuguese (Brazil)', 'lan2': 'Portugues (brasil)'},
    {'lan1': 'Russian', 'lan2': 'русский'},
    {'lan1': 'Spanish', 'lan2': 'Español'},
    {'lan1': 'Turkish', 'lan2': 'Türk'},
    {'lan1': 'Ukrainian', 'lan2': 'Український'},
    {'lan1': 'Uzbek', 'lan2': 'O\'zbek'},
  ];

  bool translate = false;

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              'Translate Messages',
              style: TextStyle(fontFamily: 'bold', color: style.appColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Show Translate Button',
                  style: TextStyle(fontFamily: 'bold', color: style.appColor),
                ),
                Switch(
                  value: translate,
                  activeColor: style.appColor,
                  onChanged: (value) {
                    setState(() {
                      translate = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The \'Translate\' button will appear when you make a single tap on a text message.',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 10),
                Text(
                  'Google may have access to the messages you translate.',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 16),
            child: ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: _elements.map((e) {
                return Container(
                  decoration: style.bottomBorder(),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0),
                    onTap: () {
                      setState(() {
                        curLang = e['lan1'];
                      });
                    },
                    title: Text(e['lan2']),
                    subtitle: Text(
                      e['lan1'],
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(Icons.check,
                            color: curLang == e['lan1']
                                ? style.appColor
                                : Colors.transparent)),
                  ),
                );
              }).toList(),
            ),
          ),
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
        'Language',
        style: style.pageTitle(),
      ),
      actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
    );
  }
}

class Item {
  const Item(this.name, this.clr, this.msg);
  final String name;
  final Color clr;
  final String msg;
}
