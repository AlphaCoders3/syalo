// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:syalo_app/OtherScreens/request_learning_path.dart';
import 'package:syalo_app/OtherScreens/search_suggestions.dart';
import 'package:syalo_app/OtherScreens/self_learn_paths.dart';
import 'package:syalo_app/OtherScreens/sounds.dart';
import 'package:syalo_app/model/app_header.dart';
import 'package:syalo_app/model/empty_box.dart';
import 'package:syalo_app/model/search_field.dart';

class PathPage extends StatelessWidget {
  const PathPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 90),
                SearchField(),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'see all',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Sounds(),
                            ),
                          );
                        },
                        child: EmptyBox()),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelfLearn(),
                            ),
                          );
                        },
                        child: EmptyBox()),
                  ],
                ),
                SizedBox(height: 55),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'see all',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RequestLearningPath(),
                            ),
                          );
                        },
                        child: EmptyBox()),
                    EmptyBox(),
                  ],
                ),
                SizedBox(height: 55),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Anxiety',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'see all',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    EmptyBox(),
                    EmptyBox(),
                  ],
                ),
                SizedBox(height: 55),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
