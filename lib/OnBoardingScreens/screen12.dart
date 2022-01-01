// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:syalo_app/initial_page.dart';
import 'dart:async';

class Screen12 extends StatefulWidget {
  const Screen12({Key? key}) : super(key: key);

  @override
  State<Screen12> createState() => _Screen12State();
}

class _Screen12State extends State<Screen12> {
  @override
  void initState() {
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        PageTransition(type: PageTransitionType.fade, child: InitialPage()),
      );
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFffffff),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
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
                  padding: EdgeInsets.only(top: 45),
                  child: Center(
                    child: Text(
                      'Knowing How to be Mentally Healthy',
                      style: GoogleFonts.getFont('Montserrat').copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 21.0,
                          color: Color(0xFF000000)),
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      'isn’t Luck',
                      style: GoogleFonts.getFont('Montserrat').copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 22.0,
                          color: Color(0xFF000000)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Text(
                    'It’s a Skill',
                    style: GoogleFonts.getFont('Montserrat').copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 35.0,
                        color: Color(0xFF000000)),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: Text(
                    'That we all deserve to have!',
                    style: GoogleFonts.getFont('Montserrat').copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 25.0,
                        color: Color(0xFF000000)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Image(
                    colorBlendMode: BlendMode.overlay,
                    image: AssetImage(
                        'assets/images/undraw_young_and_happy_hfpe 1.png'),
                  ),
                ),
                SizedBox(height: 15),
                Center(child: CircularProgressIndicator()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
