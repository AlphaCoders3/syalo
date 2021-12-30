import 'package:flutter/material.dart';

class PathPage extends StatefulWidget {
  const PathPage({Key? key}) : super(key: key);

  @override
  _PathPageState createState() => _PathPageState();
}

class _PathPageState extends State<PathPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            child: Text(
              "Path Page",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
