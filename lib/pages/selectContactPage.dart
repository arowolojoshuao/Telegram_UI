/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:telegram_fluttermarketplace/utilities/constance.dart' as style;

class selectContactPage extends StatefulWidget {
  selectContactPage({Key? key}) : super(key: key);

  static const String pageId = 'selectContactPage';

  @override
  State<selectContactPage> createState() => _selectContactPageState();
}

class _selectContactPageState extends State<selectContactPage> {
  List _elements = [
    {'name': 'Rahul Jograna', 'color': Colors.blue, 'group': 'A'},
    {'name': 'Jaydeep Hirani', 'color': Colors.green, 'group': 'A'},
    {'name': 'Dodiya Saheb', 'color': Colors.orange, 'group': 'A'},
    {'name': 'Richa Jain', 'color': Colors.indigo, 'group': 'A'},
    {'name': 'Arjun Bhai', 'color': Colors.teal, 'group': 'D'},
    {'name': 'Nitushree', 'color': Colors.lightGreen, 'group': 'D'},
    {'name': 'Bhargavi Shukla', 'color': Colors.blue, 'group': 'K'},
    {'name': 'Mayank Boricha', 'color': Colors.green, 'group': 'K'},
    {'name': 'hardik Rajput', 'color': Colors.blueGrey, 'group': 'M'},
    {'name': 'Meet Dangar', 'color': Colors.indigo, 'group': 'M'},
    {'name': 'Krishna Parmar', 'color': Colors.teal, 'group': 'R'},
    {'name': 'Ranveer Kapoor', 'color': Colors.lightGreen, 'group': 'R'},
    {'name': 'Tinu', 'color': Colors.blue, 'group': 'T'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return GroupedListView<dynamic, String>(
      elements: _elements,
      groupBy: (element) => element['group'],
      groupComparator: (value1, value2) => value2.compareTo(value1),
      itemComparator: (item1, item2) => item1['name'].compareTo(item2['name']),
      order: GroupedListOrder.DESC,
      useStickyGroupSeparators: true,
      groupSeparatorBuilder: (String value) => Padding(
        padding: const EdgeInsets.only(left: 60),
        child: Divider(),
      ),
      itemBuilder: (c, element) {
        return _buildBox(element);
      },
    );
  }

  Widget _buildBox(ele) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 60,
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: Center(
              child: Text(ele['group']),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(right: 16),
            decoration: style.avatarBox(ele['color']),
            child: Center(
              child: Text(ele['group'], style: style.avatarText()),
            ),
          ),
          Expanded(
              child: Container(
            height: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(ele['name'], style: style.nameText()),
                SizedBox(height: 3),
                Text(
                  ele['name'] + ' joined telegram!',
                  style: style.smallblueText(),
                ),
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
        'Select Contact',
        style: style.pageTitle(),
      ),
    );
  }
}
