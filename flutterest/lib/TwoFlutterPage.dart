import 'package:flutter/material.dart';

class TwoFlutterPage extends StatefulWidget {
  @override
  _TwoFlutterPageState createState() => _TwoFlutterPageState();
}

class _TwoFlutterPageState extends State<TwoFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Here is the second page, in this page click the system back key can not return to the previous page",
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }
}
