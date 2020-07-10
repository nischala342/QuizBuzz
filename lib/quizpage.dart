import 'package:flutter/material.dart';
import 'dart:convert';

// ignore: camel_case_types
class getjson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('key'), // add the key
        builder: (context, snapshot) {
          var mydata = json.decode(snapshot.data.toString());
          if (mydata == null) {
            return Scaffold(
              body: Center(
                child: Text(
                  "Loading",
                ),
              ),
            );
          } else {
            return QuizPage();
          }
        });
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
