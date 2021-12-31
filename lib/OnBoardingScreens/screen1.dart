// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:syalo_app/OnBoardingScreens/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 120.0,
              ),
              Container(
                child: Text(
                  'Welcome',
                  style: GoogleFonts.getFont('Montserrat').copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 45.0,
                      color: Color(0xFF000000)),
                ),
              ),
              SizedBox(
                height: 78.0,
              ),
              Container(
                child: Image(
                  colorBlendMode: BlendMode.overlay,
                  image:
                      AssetImage('assets/images/undraw_festivities_tvvj 1.png'),
                ),
              ),
              Container(
                child: Text(
                  'Become',
                  style: GoogleFonts.getFont('Montserrat').copyWith(
                      fontWeight: FontWeight.w800,
                      fontSize: 30.0,
                      color: Color(0xFF0064FF)),
                ),
              ),
              Container(
                child: Text(
                  'Happier',
                  style: GoogleFonts.getFont('Montserrat').copyWith(
                      fontWeight: FontWeight.w800,
                      fontSize: 40.0,
                      color: Color(0xFF0064FF)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: Screen2()));
                },
                child: Container(
                    width: 328.0,
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
                        'Continue',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w500,
                            fontSize: 25.0),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
