// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:syalo_app/model/app_header.dart';
import 'package:syalo_app/model/color_box.dart';
import 'package:syalo_app/model/search_field.dart';
import 'package:syalo_app/model/vent_card.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    bool status = false;

    void _attemptChange(bool newState) {
      setState(() {
        status = newState;
      });
    }

    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xff00C02A),
          child: Icon(
            Icons.add,
            size: 32,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(height: 80),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Anonymous',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        FlutterSwitch(
                          width: 75.0,
                          height: 30.0,
                          valueFontSize: 14.0,
                          inactiveColor: Color(0xff9C0000),
                          toggleSize: 25.0,
                          value: status,
                          borderRadius: 25.0,
                          padding: 8,
                          showOnOff: true,
                          onToggle: (bool isOn) {
                            setState(() {
                              _attemptChange(isOn);
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    SearchField(),
                    SizedBox(height: 66),
                    TabBar(
                      isScrollable: false,
                      labelColor: Colors.black,
                      unselectedLabelColor: Color(0xff777777),
                      indicatorColor: Colors.transparent,
                      tabs: [
                        Text(
                          'Voice',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Vent',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            // color: Color(0xff777777),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Expanded(
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: voiceWidget(context)),
                          SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: ventWidget(context))
                        ],
                      ),
                    ),
                    SizedBox(height: 80),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget voiceWidget(BuildContext context) {
  return Column(
    children: [
      ColorBox(color: Color(0xff0CA7FE)),
      SizedBox(height: 30),
      ColorBox(color: Color(0xffFFDD00)),
      SizedBox(height: 30),
      ColorBox(color: Color(0xffFF1D00)),
    ],
  );
}

Widget ventWidget(BuildContext context) {
  return Column(
    children: [
      VentCard(),
      VentCard(),
    ],
  );
}
