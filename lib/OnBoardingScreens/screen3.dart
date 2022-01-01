// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen4.dart';
import 'package:page_transition/page_transition.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

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
                              left: 35.0, right: 180, top: 35.0),
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
                        padding: EdgeInsets.only(left: 35, top: 30),
                        child: Text(
                          'Friends that Grow Together,\nStay Together',
                          style: GoogleFonts.getFont('Montserrat').copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 25.0,
                              color: Color(0xFF000000)),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        child: Image(
                          colorBlendMode: BlendMode.overlay,
                          image: AssetImage(
                              'assets/images/undraw_stand_out_1oag 2.png'),
                        ),
                      ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      Container(
                        padding: EdgeInsets.only(left: 25, right: 120, top: 9),
                        child: Text(
                          'Gamified Habits',
                          style: GoogleFonts.getFont('Montserrat').copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 30.0,
                              color: Color(0xFF0081FF)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 200, right: 20, top: 30),
                        child: Text(
                          'With Friends',
                          style: GoogleFonts.getFont('Montserrat').copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 25.0,
                              color: Color(0xFFFF0A11)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / (2) - 114,
              bottom: 30,
              child: Hero(
                tag: 'next',
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(seconds: 1),
                            child: Screen4()));
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
