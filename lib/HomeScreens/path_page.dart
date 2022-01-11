// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:syalo_app/DrawerScreens/chat_page.dart';
import 'package:syalo_app/OtherScreens/path_page2.dart';
import 'package:syalo_app/OtherScreens/request_learning_path.dart';
import 'package:syalo_app/OtherScreens/search_results.dart';
import 'package:syalo_app/OtherScreens/search_suggestions.dart';
import 'package:syalo_app/OtherScreens/self_learn_paths.dart';
import 'package:syalo_app/OtherScreens/sounds.dart';
import 'package:syalo_app/OtherScreens/sounnds_page.dart';
import 'package:syalo_app/model/app_header.dart';
import 'package:syalo_app/model/color_box.dart';
import 'package:syalo_app/model/empty_box.dart';
import 'package:syalo_app/model/search_field.dart';
import 'package:syalo_app/model/vent_card.dart';

class PathPage extends StatelessWidget {
  const PathPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Column(
              children: [
                SizedBox(height: 90),
                SearchField(),
                SizedBox(height: 40),
                TabBar(
                  isScrollable: false,
                  labelColor: Colors.black,
                  unselectedLabelColor: Color(0xff777777),
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Text(
                      'Sounds',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Path',
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
                          child: SoundsPage()),
                      SingleChildScrollView(
                          physics: BouncingScrollPhysics(), child: PathPage2()),
                    ],
                  ),
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
