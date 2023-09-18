/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:telegram_fluttermarketplace/pages/verificationPage.dart';
import 'package:telegram_fluttermarketplace/utilities/constance.dart' as style;

class welcomePage extends StatefulWidget {
  welcomePage({Key? key}) : super(key: key);

  static const String pageId = 'welcomePage';

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFF0F2F6),
          appBar: _buildAppBar(),
          body: _buildBody(),
          bottomNavigationBar: _buildBottomNavigationBar()),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFFF0F2F6),
      elevation: 0,
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.dark_mode,
              color: style.appColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return CarouselSlider(
      options: CarouselOptions(
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
            print(index);
          });
        },
        height: double.infinity,
        viewportFraction: 1.0,
        initialPage: 0,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: false,
        enlargeCenterPage: false,
        scrollDirection: Axis.horizontal,
      ),
      carouselController: _controller,
      items: [1, 2, 3, 4, 5, 6].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (i == 1)
                    _buildSlide1(context)
                  else if (i == 2)
                    _buildSlide2(context)
                  else if (i == 3)
                    _buildSlide3(context)
                  else if (i == 4)
                    _buildSlide4(context)
                  else if (i == 5)
                    _buildSlide5(context)
                  else if (i == 6)
                    _buildSlide6(context)
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildSlide1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/c1.png',
                ),
                fit: BoxFit.contain),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Telegram',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'bold', color: Colors.black, fontSize: 20),
                ),
              ),
              Text(
                'The Word\'s fastest messaging app. it is free and secure.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSlide2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/c2.png',
                ),
                fit: BoxFit.contain),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Fast',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'bold', color: Colors.black, fontSize: 20),
                ),
              ),
              Text(
                'Telegram delivers messages faster than any other application.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSlide3(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/c3.png',
                ),
                fit: BoxFit.contain),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Free',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'bold', color: Colors.black, fontSize: 20),
                ),
              ),
              Text(
                'Telegram is free forever. No ads. No Subscription fees.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSlide4(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/c4.png',
                ),
                fit: BoxFit.contain),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Powerful',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'bold', color: Colors.black, fontSize: 20),
                ),
              ),
              Text(
                'Telegram has no limits on the size of your media and chats',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSlide5(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/c5.png',
                ),
                fit: BoxFit.contain),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Secure',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'bold', color: Colors.black, fontSize: 20),
                ),
              ),
              Text(
                'Telegram keep your messages safe from hackers attacks.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSlide6(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/c6.png',
                ),
                fit: BoxFit.contain),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Cloud - Based',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'bold', color: Colors.black, fontSize: 20),
                ),
              ),
              Text(
                'Telegram let you access your messages from multiple devices.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, bottom: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => verificationPage()));
              },
              child: Container(
                height: 50,
                decoration: style.contentButtonStyle(),
                child: Center(
                  child: Text(
                    'Start Messaging',
                    style: TextStyle(fontFamily: 'bold', color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
