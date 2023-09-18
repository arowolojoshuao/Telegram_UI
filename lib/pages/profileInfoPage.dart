/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:telegram_fluttermarketplace/pages/homePage.dart';
import 'package:telegram_fluttermarketplace/utilities/constance.dart' as style;

class profileInfoPage extends StatefulWidget {
  profileInfoPage({Key? key}) : super(key: key);

  static const String pageId = 'profileInfoPage';

  @override
  State<profileInfoPage> createState() => _profileInfoPageState();
}

class _profileInfoPageState extends State<profileInfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return FractionallySizedBox(
                    heightFactor: 0.2,
                    child: showBottomModal(),
                  );
                },
              );
            },
            child: Container(
              height: 70,
              width: 70,
              child: CircleAvatar(
                backgroundColor: style.appColor,
                child: Icon(
                  Icons.add_photo_alternate,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Profile Info',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'bold', fontSize: 25),
          ),
          Text(
            'Enter your name and add a profile picture.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 20),
          _buildInputContent('First Name (required)'),
          _buildInputContent('Last Name (required)'),
        ],
      ),
    );
  }

  Widget _buildInputContent(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
            labelText: '$txt',
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: style.appColor),
              borderRadius: BorderRadius.circular(5),
            )),
      ),
    );
  }

  Widget showBottomModal() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose Photo',
              style: TextStyle(fontFamily: 'bold', fontSize: 25),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.camera_alt,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Take photo',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.image,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Upload from gallary',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return SingleChildScrollView(
      reverse: true,
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'by sign in up, ',
                      style: TextStyle(color: Colors.grey),
                      children: const <TextSpan>[
                        TextSpan(
                          text: '\nyou Agree to the',
                        ),
                        TextSpan(
                            text: ' terms of service',
                            style: TextStyle(color: style.appColor)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homePage()));
              },
              backgroundColor: style.appColor,
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
