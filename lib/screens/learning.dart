// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:syalo/widget/app_header.dart';
import 'package:syalo/widget/empty_box.dart';
import 'package:syalo/widget/search_field.dart';

class Learning extends StatelessWidget {
  const Learning({Key? key}) : super(key: key);

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
                AppHeader(text: 'Request'),
                SizedBox(height: 40),
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
                    EmptyBox(),
                    EmptyBox(),
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
                    EmptyBox(),
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
