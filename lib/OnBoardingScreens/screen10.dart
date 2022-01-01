// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen11.dart';
import 'package:page_transition/page_transition.dart';

class Screen10 extends StatelessWidget {
  const Screen10({Key? key}) : super(key: key);

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
                          EdgeInsets.only(left: 35.0, right: 180, top: 15.0),
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
                          'Let’s Set up',
                          style: GoogleFonts.getFont('Montserrat').copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 28.0,
                              color: Color(0xFF000000)),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'HABITS',
                        style: GoogleFonts.getFont('Montserrat').copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 35.0,
                            color: Color(0xFF000000)),
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: 328.0,
                          height: 65.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF0081FF),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 22),
                              Text(
                                'Sleep',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25.0),
                              ),
                              SizedBox(width: 180),
                              Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: 328.0,
                          height: 65.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF0081FF),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 22),
                              Text(
                                'Sleep',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25.0),
                              ),
                              SizedBox(width: 180),
                              Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: 328.0,
                          height: 65.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF0081FF),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 22),
                              Text(
                                'Sleep',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25.0),
                              ),
                              SizedBox(width: 180),
                              Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: 328.0,
                          height: 65.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF0081FF),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 22),
                              Text(
                                'Sleep',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25.0),
                              ),
                              SizedBox(width: 180),
                              Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 175),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                            width: 115.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFDD00),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 17),
                                Text(
                                  'add',
                                  style: TextStyle(
                                      color: Color(0xFF303030),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22.0),
                                ),
                                SizedBox(width: 19),
                                Icon(
                                  FontAwesomeIcons.plus,
                                  color: Color(0xFF303030),
                                ),
                              ],
                            )),
                      ),
                    ),

                    // Container(
                    //   child: Image(
                    //     colorBlendMode: BlendMode.overlay,
                    //     image: AssetImage(
                    //         'Images/undraw_Growth_curve_re_t5s7 (1) 1.png'),
                    //   ),
                    // ),
                  ],
                ),
                Positioned(
                  bottom: 30,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image(
                          colorBlendMode: BlendMode.overlay,
                          image: AssetImage(
                              'assets/images/undraw_Growth_curve_re_t5s7 (1) 1.png'),
                        ),
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 200,
                              left: MediaQuery.of(context).size.width / (2) -
                                  114),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.fade,
                                      child: Screen11()));
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
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    )
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'Continue',
                                    style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 25.0),
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
