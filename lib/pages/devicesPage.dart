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

class devicesPage extends StatefulWidget {
  devicesPage({Key? key}) : super(key: key);

  static const String pageId = 'devicesPage';

  @override
  State<devicesPage> createState() => _devicesPageState();
}

class _devicesPageState extends State<devicesPage> {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Image.asset('assets/images/l1.jpg', width: 150),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Link telegram desktop or telegram web by scanning a QR code.',
                    textAlign: TextAlign.center,
                    style: style.lightBlackText(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => verificationPage()));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: style.contentButtonStyle(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.qr_code,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Start Messaging',
                            style: TextStyle(
                                fontFamily: 'bold', color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'This Device',
                  style: TextStyle(color: style.appColor, fontFamily: 'bold'),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(30),
                        child: FittedBox(
                          child: Image.asset('assets/images/a2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Xiaomi Redmi Note 8',
                            style: TextStyle(
                                fontFamily: 'bold',
                                color: Colors.black,
                                fontSize: 18),
                          ),
                          Text(
                            'Telegram Android 8.7.0',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Dhoraji, India. Online',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Autometically terminate old sessions',
                  style: TextStyle(color: style.appColor, fontFamily: 'bold'),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'if inactive for',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    Text(
                      '6 months',
                      style: TextStyle(color: style.appColor, fontSize: 15),
                    ),
                  ],
                ),
              ],
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
      titleSpacing: 0,
      title: Text(
        'Devices',
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
