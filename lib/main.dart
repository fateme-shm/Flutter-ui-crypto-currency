// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:crypto/chart.dart';
import 'package:crypto/start.dart';
import 'package:crypto/wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

/////////////// ********************************** /////////////////////
/////////////// ********************************** /////////////////////
/////////////// ********************************** /////////////////////
/////////////////////// Fateme Shamohammadi ////////////////////////////
/////////////// ********************************** /////////////////////
/////////////// ********************************** /////////////////////
/////////////// ********************************** /////////////////////

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        brightness: Brightness.dark,
      ),
      initialRoute: '/startPage',
      routes: {
        '/': (context) => NavClsss(),
        '/startPage': (context) => StartPage(),
        '/chartPage': (context) => ChartPage(),
        '/walletPage': (context) => WalletPage(),
      },
    );
  }
}

class NavClsss extends StatefulWidget {
  @override
  State<NavClsss> createState() => _NavClsssState();
}

class _NavClsssState extends State<NavClsss> {
  int _selectedIndex = 2;

  final List<Widget> _optionMenu = <Widget>[
    WalletPage(),
    WalletPage(),
    WalletPage(),
    WalletPage(),
    WalletPage()
  ];

  void _onTap(int value) {
    setState(
      () {
        _selectedIndex = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _optionMenu.elementAt(_selectedIndex),
        bottomNavigationBar: Card(
          child: BottomNavigationBar(
            // ignore: prefer_const_literals_to_create_immutables
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chart_bar_square),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bell),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Hero(
                  tag: "startPageHero",
                  child: Card(
                    color: Colors.pink[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        LineAwesomeIcons.wallet,
                      ),
                    ),
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings),
                label: "",
              ),
            ],
            iconSize: 30,
            selectedIconTheme: IconThemeData(size: 40),
            onTap: _onTap,
            showSelectedLabels: false,
            unselectedItemColor: Colors.white,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
