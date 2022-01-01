// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen9.dart';
import 'package:page_transition/page_transition.dart';

class Screen8 extends StatelessWidget {
  const Screen8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFffffff),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      Hero(
                        tag: 'next',
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 35.0, right: 180, top: 25.0),
                          child: Text(
                            'Hi, Shreyas',
                            style: GoogleFonts.getFont('Montserrat').copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 30.0,
                                color: Color(0xFF000000)),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 25, right: 26),
                        child: Center(
                          child: Text(
                            'Building in INDIA',
                            style: GoogleFonts.getFont('Montserrat').copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 35.0,
                                color: Color(0xFF000000)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 160, right: 10),
                        child: Text(
                          'For the World',
                          style: GoogleFonts.getFont('Montserrat').copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 32.0,
                              color: Color(0xFF0081FF)),
                        ),
                      ),
                      Container(
                        child: Image(
                          colorBlendMode: BlendMode.overlay,
                          image: AssetImage(
                              'assets/images/undraw_Team_collaboration_re_ow29 1.png'),
                        ),
                      ),
                      Container(
                        width: 386,
                        height: 241,
                        child: Image(
                          colorBlendMode: BlendMode.overlay,
                          image: AssetImage(
                              'assets/images/undraw_connected_world_wuay 1.png'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / (2) - 114,
              bottom: 25,
              child: Hero(
                tag: 'next',
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(seconds: 1),
                            child: Screen9()));
                  },
                  child: Container(
                      width: 228.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF1067CD),
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF24488E),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontFamily: 'Circular',
                              decoration: TextDecoration.none,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w500,
                              fontSize: 25.0),
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
