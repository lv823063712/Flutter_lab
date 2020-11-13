import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:flutterest/TwoFlutterPage.dart';

class TestFlutterPage extends StatefulWidget {
  @override
  _TestFlutterPageState createState() => _TestFlutterPageState();
}

class _TestFlutterPageState extends State<TestFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Container(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => TwoFlutterPage()));
            FlutterBoost.singleton
                .open("ZZZZZZZZZZZ")
                .then((Map<dynamic, dynamic> value) {
              print(
                  'call me when page is finished. did recieve native route result $value');
            });
          },
          child: Text("Click to jump to the next Flutter page"),
        ),
      ),
    );
  }
}
