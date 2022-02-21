// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 30),
              Image.asset(
                'assets/images/ic_start.png',
                width: 250,
              ),
              SizedBox(height: 40),
              Text(
                'Exciting World of All-Online\nDigital Money',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 27,
                  fontFamily: 'BerlinTTF',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Your alternative digital wallet.\nEasieer transactions, better payment structure',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'BerlinTTF',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              Hero(
                tag: "startPageHero",
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.pink[400],
                            ),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.all(15),
                            ),
                          ),
                          onPressed: () => Navigator.pushNamed(context, '/'),
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'BerlinTTF',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(width: 1.0, color: Colors.white)),
                          backgroundColor: MaterialStateProperty.all(
                            Colors.transparent,
                          ),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.all(15),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'BerlinTTF',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
