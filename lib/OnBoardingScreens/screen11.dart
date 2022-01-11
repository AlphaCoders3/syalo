// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen12.dart';
import 'package:page_transition/page_transition.dart';

class Screen11 extends StatelessWidget {
  const Screen11({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(left: 20.0, right: 200, top: 25.0),
                    child: Text(
                      'Hi, Shreyas',
                      style: GoogleFonts.getFont('Montserrat').copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 30.0,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Center(
                      child: Text(
                        'Invite your',
                        style: GoogleFonts.getFont('Montserrat').copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 28.0,
                            color: Color(0xFF000000)),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'FRIENDS',
                      style: GoogleFonts.getFont('Montserrat').copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 35.0,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 1, right: 1),
                    child: Text(
                      'There’s 93’% more chance\nYou & Friends will be consistent.',
                      style: GoogleFonts.getFont('Montserrat').copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 23.0,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  Container(
                    child: Image(
                      colorBlendMode: BlendMode.overlay,
                      image: AssetImage(
                          'assets/images/undraw_Having_fun_re_vj4h 1.png'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Color(0xFF8BDB95),
                        size: 40,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.instagram,
                        color: Color(0xFFA95196),
                        size: 40,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.facebook,
                        color: Color(0xFF105C9E),
                        size: 40,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.shareAlt,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
              Positioned(
                left: MediaQuery.of(context).size.width / (2) - 160,
                bottom: 30,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: Screen12()));
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
                              'Let’s Kick Ass',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25.0),
                            ),
                          )),
                    ),
                    SizedBox(height: 16),
                    Container(
                      child: Text(
                        '‘- Totally Made up. But, Social Contracts Are powerful',
                        style: GoogleFonts.getFont('Montserrat').copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 13.0,
                            color: Color(0xFF000000)),
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
