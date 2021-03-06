// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen8.dart';
import 'package:page_transition/page_transition.dart';

class Screen7 extends StatelessWidget {
  const Screen7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFffffff),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 35.0, right: 180, top: 35.0),
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
                        'Journal',
                        style: GoogleFonts.getFont('Montserrat').copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 35.0,
                            color: Color(0xFF000000)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 130, top: 7),
                    child: Text(
                      'Write, Speak',
                      style: GoogleFonts.getFont('Montserrat').copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 28.0,
                          color: Color(0xFF0081FF)),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 160, top: 5),
                    child: Text(
                      'REFLECT',
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
                          'assets/images/undraw_things_to_say_ewwb 1.png'),
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
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(seconds: 1),
                                child: Screen8()));
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
