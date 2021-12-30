// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:syalo/screens/chat.dart';
import 'package:syalo/screens/favourite.dart';
import 'package:syalo/screens/learning.dart';
import 'package:syalo/screens/new_habit.dart';
import 'package:syalo/screens/request.dart';
import 'package:syalo/screens/search.dart';
import 'package:syalo/screens/search_result.dart';
import 'package:syalo/screens/self_learn.dart';
import 'package:syalo/screens/sounds.dart';
import 'package:syalo/screens/voice_coming.dart';
import 'package:syalo/widget/button.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Chat(),
                    ),
                  );
                },
                child: Button(text: 'Chat')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Favourite(),
                    ),
                  );
                },
                child: Button(text: 'Favourite')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Learning(),
                    ),
                  );
                },
                child: Button(text: 'Learning')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewHabit(),
                    ),
                  );
                },
                child: Button(text: 'New Habits')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Request(),
                    ),
                  );
                },
                child: Button(text: 'Request')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Search(),
                    ),
                  );
                },
                child: Button(text: 'Search')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchResult(),
                    ),
                  );
                },
                child: Button(text: 'Search Result')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelfLearn(),
                    ),
                  );
                },
                child: Button(text: 'Self Learn')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sounds(),
                    ),
                  );
                },
                child: Button(text: 'Sounds')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VoiceComing(),
                    ),
                  );
                },
                child: Button(text: 'Voice Coming')),
          ],
        ),
      ),
    );
  }
}
