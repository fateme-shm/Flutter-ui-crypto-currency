// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartPage extends StatefulWidget {
  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  List<_CryptoData> data = [
    _CryptoData('15,000', 29.0),
    _CryptoData('12,500', 29.0),
    _CryptoData('12,500', 30.0),
    _CryptoData('10,000', 31.0),
    _CryptoData('7,500', 32.0),
    _CryptoData('5,000', 33.0),
    _CryptoData('2,500', 43.0),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 10),
                Hero(
                  tag: "chartPageHero",
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pushNamed(context, '/'),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 23,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'ETHEREUM BALANCE',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.pink[400],
                            fontFamily: 'BerlinTTF',
                          ),
                        ),
                        Icon(
                          CupertinoIcons.qrcode,
                          color: Colors.white,
                          size: 27,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  color: Colors.grey[900],
                  child: Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Icon(
                      LineAwesomeIcons.ethereum,
                      size: 80,
                      color: Colors.pink[400],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'ETH 2555.07',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'BerlinTTF',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  ' IDR  18,358,026',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BerlinTTF',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '+ 2555,547 (3.10%)',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.pink[400],
                    fontFamily: 'BerlinTTF',
                  ),
                ),
                SizedBox(height: 30),
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
                          'Analytics',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'BerlinTTF',
                          ),
                        ),
                        Card(
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Income',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontFamily: 'BerlinTTF',
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        color: Colors.white38,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            '  Weekly  ',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            '   Montly  ',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            '  3 Months  ',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <ChartSeries<_CryptoData, String>>[
                    LineSeries<_CryptoData, String>(
                      dataSource: data,
                      xValueMapper: (_CryptoData sales, _) => sales.price,
                      yValueMapper: (_CryptoData sales, _) => sales.month,
                    ),
                  ],
                ),
                SizedBox(height: 20),
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
                          'Recent Transactions',
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
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.person,
                            size: 35,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PSY_Duck',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                          Text(
                            'Yesterday | 13:03:00',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IDR 13,832,924',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                          Text(
                            '        + 247 ETH',
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.person,
                            size: 35,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PSY_Duck',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                          Text(
                            'Yesterday | 13:03:00',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IDR 13,832,924',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                          Text(
                            '        + 247 ETH',
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.person,
                            size: 35,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PSY_Duck',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                          Text(
                            'Yesterday | 13:03:00',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IDR 13,832,924',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'BerlinTTF',
                            ),
                          ),
                          Text(
                            '        + 247 ETH',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CryptoData {
  _CryptoData(this.price, this.month);

  final String price;
  final double month;
}
