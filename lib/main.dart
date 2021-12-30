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

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NewHabit(),
    );
  }
}
