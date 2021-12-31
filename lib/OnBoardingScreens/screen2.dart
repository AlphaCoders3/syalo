// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screen3.dart';
import 'package:page_transition/page_transition.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

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
                  'Identify. Rectify.',
                  style: GoogleFonts.getFont('Montserrat').copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 30.0,
                      color: Color(0xFF000000)),
                ),
              ),
              SizedBox(
                height: 29.0,
              ),
              Container(
                child: Text(
                  'Experience',
                  style: GoogleFonts.getFont('Montserrat').copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 35.0,
                      color: Color(0xFF000000)),
                ),
              ),
              SizedBox(
                height: 93,
              ),
              Container(
                child: Image(
                  colorBlendMode: BlendMode.overlay,
                  image: AssetImage(
                      'assets/images/undraw_Explore_re_8l4v (1) 1.png'),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: Screen3()),
                  );
                },
                child: Container(
                    width: 278.0,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Icon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Google',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w500,
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: Screen3()),
                  );
                },
                child: Container(
                    width: 278.0,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ImageIcon(
                            AssetImage("assets/images/facebook1.png"),
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Facebook',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w500,
                                fontSize: 25.0),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
