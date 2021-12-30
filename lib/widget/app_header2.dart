// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AppHeader2 extends StatelessWidget {
  const AppHeader2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.arrow_back_ios_sharp,
              size: 28,
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.share,
              size: 28,
            ),
            SizedBox(width: 10),
            Icon(
              Icons.favorite_outline_rounded,
              size: 28,
            ),
          ],
        )
      ],
    );
  }
}
