// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Welcome,  Fateme',
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: 'BerlinTTF',
                        ),
                      ),
                      Stack(
                        children: [
                          Icon(
                            CupertinoIcons.bell,
                            size: 30,
                          ),
                          Card(
                            color: Colors.pink[400],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Text(
                              '6',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 175,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 30),
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/ic_banner.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    LineAwesomeIcons.ethereum,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'ETHEREUM BALANCE',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                  SizedBox(width: 55),
                                  Icon(
                                    CupertinoIcons.qrcode,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Text(
                                    ' ETH',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                  Text(
                                    '  3,278',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    '+ 89,046 (1,59%)',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Card(
                                    color: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Icon(
                                        CupertinoIcons.arrow_up,
                                        color: Colors.black,
                                        size: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'IDR',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                  Text(
                                    '  18,358,026',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/ic_banner.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    LineAwesomeIcons.ethereum,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'ETHEREUM BALANCE',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                  SizedBox(width: 55),
                                  Icon(
                                    CupertinoIcons.qrcode,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Text(
                                    ' ETH',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                  Text(
                                    '  3,278',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    '+ 6,640(0.35%)',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Card(
                                    color: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Icon(
                                        CupertinoIcons.arrow_up,
                                        color: Colors.black,
                                        size: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'IDR',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                  Text(
                                    '  18,358,026',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/ic_banner.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    LineAwesomeIcons.ethereum,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'ETHEREUM BALANCE',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                  SizedBox(width: 55),
                                  Icon(
                                    CupertinoIcons.qrcode,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Text(
                                    ' ETH',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                  Text(
                                    '  3,278',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    '+ 89,046 (1,59%)',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Card(
                                    color: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        CupertinoIcons.arrow_up,
                                        color: Colors.black,
                                        size: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'IDR',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                  Text(
                                    '  18,358,026',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BerlinTTF',
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 30, left: 30, top: 30, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.pinkAccent),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.2),
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 5, // blur radius
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                CupertinoIcons.add_circled,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Buy',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.pinkAccent),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.2),
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 5, // blur radius
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Transform.rotate(
                                angle: 90 * 3.14 / 180,
                                child: Icon(
                                  LineAwesomeIcons.file_import,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Send',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.pinkAccent),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.2),
                                  spreadRadius: 5, //spread radius
                                  blurRadius: 5, // blur radius
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Transform.rotate(
                                angle: 180 * 3.14 / 120,
                                child: Icon(
                                  LineAwesomeIcons.file_import,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Receive',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.pinkAccent),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.2),
                                  spreadRadius: 5, //spread radius
                                  blurRadius: 5, // blur radius
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                CupertinoIcons.qrcode,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Scan',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.pink[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'WatchList',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'BerlinTTF',
                          ),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.black,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Card(
                      color: Colors.grey[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(LineAwesomeIcons.bitcoin),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bitcoin',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'BerlinTTF',
                          ),
                        ),
                        Text(
                          'BTC',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontFamily: 'BerlinTTF',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 110),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR  328,271,467',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'BerlinTTF',
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '+ 43,497,698  (2.91%)',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontFamily: 'BerlinTTF',
                              ),
                            ),
                            Card(
                              color: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              child: Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Icon(
                                  CupertinoIcons.arrow_up,
                                  color: Colors.black,
                                  size: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Hero(
                  tag: "chartPageHero",
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, '/chartPage'),
                    child: Row(
                      children: [
                        Card(
                          color: Colors.grey[700],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(LineAwesomeIcons.ethereum),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ethereum',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'BerlinTTF',
                              ),
                            ),
                            Text(
                              'ETH',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontFamily: 'BerlinTTF',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 95),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'IDR  4,127,177',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'BerlinTTF',
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '+ 3,547,698  (6.10%)',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontFamily: 'BerlinTTF',
                                  ),
                                ),
                                Card(
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(
                                      CupertinoIcons.arrow_up,
                                      color: Colors.black,
                                      size: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Card(
                      color: Colors.grey[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(LineAwesomeIcons.apple),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Apple, Inc',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'BerlinTTF',
                          ),
                        ),
                        Text(
                          'AAPL',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontFamily: 'BerlinTTF',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 135),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR  170,310',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'BerlinTTF',
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '+ 11,11  (6.98%)',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontFamily: 'BerlinTTF',
                              ),
                            ),
                            Card(
                              color: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              child: Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Icon(
                                  CupertinoIcons.arrow_up,
                                  color: Colors.black,
                                  size: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'See More ...',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontFamily: 'BerlinTTF',
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
