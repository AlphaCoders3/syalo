// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:syalo/widget/app_header.dart';
import 'package:syalo/widget/color_box.dart';
import 'package:syalo/widget/search_field.dart';

class VoiceComing extends StatefulWidget {
  const VoiceComing({Key? key}) : super(key: key);

  @override
  State<VoiceComing> createState() => _VoiceComingState();
}

class _VoiceComingState extends State<VoiceComing> {
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
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                AppHeader(icon: Icons.message_outlined),
                SizedBox(height: 27),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Anonymous',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
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
                        color: Color(0xff777777),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                ColorBox(color: Color(0xff0CA7FE)),
                SizedBox(height: 30),
                ColorBox(color: Color(0xffFFDD00)),
                SizedBox(height: 30),
                ColorBox(color: Color(0xffFF1D00)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
