// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syalo/widget/chat_box.dart';
import 'package:syalo/widget/dot.dart';
import 'package:syalo/widget/mike_icon.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0081FF),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back_ios_sharp),
                          SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'TOPIC',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'subtopic',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.group,
                            size: 28,
                          ),
                          SizedBox(width: 10),
                          Text(
                            '5',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(image: AssetImage('assets/images/user.png')),
                      Image(image: AssetImage('assets/images/user.png')),
                      Image(image: AssetImage('assets/images/user.png')),
                      Image(image: AssetImage('assets/images/user.png')),
                      Image(image: AssetImage('assets/images/user.png')),
                    ],
                  ),
                  SizedBox(height: 31),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          MikeIcon(),
                          SizedBox(width: 31),
                          Dot(),
                          SizedBox(width: 10),
                          Dot(),
                          SizedBox(width: 10),
                          Dot(),
                        ],
                      ),
                      Row(
                        children: [
                          RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              FontAwesomeIcons.phoneSlash,
                              color: Colors.red,
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 70),
                              Row(children: [ChatBox(color: Colors.white)]),
                              SizedBox(height: 20),
                              Row(children: [ChatBox(color: Colors.white)]),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [ChatBox(color: Color(0xffBCFF4F))],
                              ),
                              SizedBox(height: 20),
                              Row(children: [ChatBox(color: Colors.white)]),
                              SizedBox(height: 20),
                              Row(children: [ChatBox(color: Colors.white)]),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [ChatBox(color: Color(0xffBCFF4F))],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [ChatBox(color: Color(0xffBCFF4F))],
                              ),
                              SizedBox(height: 20),
                              Row(children: [ChatBox(color: Colors.white)]),
                              SizedBox(height: 20),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    child: Container(
                      padding: EdgeInsets.only(left: 15),
                      alignment: Alignment.centerLeft,
                      height: 50,
                      width: MediaQuery.of(context).size.width - 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 15,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        'Message',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
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
    );
  }
}
