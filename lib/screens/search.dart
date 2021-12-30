// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:syalo/widget/app_header.dart';
import 'package:syalo/widget/search_field.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                AppHeader(text: 'Request'),
                SizedBox(height: 40),
                SearchField(searchWord: ''),
                SizedBox(height: 50),
                Text(
                  'Suggested',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'stress',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'anxiety',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'relationships',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'breakup',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
