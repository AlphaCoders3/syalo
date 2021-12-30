import 'package:flutter/material.dart';

class ConsultPage extends StatefulWidget {
  const ConsultPage({Key? key}) : super(key: key);

  @override
  _ConsultPageState createState() => _ConsultPageState();
}

class _ConsultPageState extends State<ConsultPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            child: Text(
              "Consult Page",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
