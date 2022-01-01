// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen10.dart';
import 'package:page_transition/page_transition.dart';

class Screen9 extends StatelessWidget {
  const Screen9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFffffff),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.only(left: 35.0, right: 180, top: 35.0),
                      child: Text(
                        'Hi, Shreyas',
                        style: GoogleFonts.getFont('Montserrat').copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 30.0,
                            color: Color(0xFF000000)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Center(
                        child: Text(
                          'OUR VISION?',
                          style: GoogleFonts.getFont('Montserrat').copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 32.0,
                              color: Color(0xFF000000)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20, top: 7),
                      child: Text(
                        'Make 4 Billion People ',
                        style: GoogleFonts.getFont('Montserrat').copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 32.0,
                            color: Color(0xFF000000)),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 130, top: 5),
                      child: Text(
                        'Un-Depressed',
                        style: GoogleFonts.getFont('Montserrat').copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 35.0,
                            color: Color(0xFF0081FF)),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Image(
                        colorBlendMode: BlendMode.overlay,
                        image: AssetImage(
                            'assets/images/undraw_snow_games_ohkc 2.png'),
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Hero(
                      tag: 'next',
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: Screen10()));
                        },
                        child: Container(
                            width: 328.0,
                            height: 65.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFCD1010),
                              borderRadius: BorderRadius.circular(25.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF000000),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                )
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'Woohoo! I’m In!',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25.0),
                              ),
                            )),
                      ),
                    ),
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
