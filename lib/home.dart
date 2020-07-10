import 'package:QuizBuzz/quizpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    "images/pandas.png",
    "images/numpy.png",
    "images/sci-kit-learn.png",
    "images/kivy.png",
    "images/tensorflow.png",
  ];

  Widget customcard(quizName, logo) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => getjson(),
            ));
          },
          child: Material(
            color: Colors.deepOrangeAccent,
            elevation: 10.0,
            borderRadius: BorderRadius.circular(2.0),
            child: Container(
              //height: 250.0,
              //width: 200.0,
              //decoration:
              //BoxDecoration(borderRadius: BorderRadius.circular(25.0)),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(100.0),
                      child: Container(
                        child: ClipOval(
                          child: Align(
                            heightFactor: 1.0,
                            widthFactor: 0.7,
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(logo),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      quizName,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: "Slabo27px",
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "this /n is /n some /n descriptipn",
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                      maxLines: 5,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QuizzBuzz",
          style: TextStyle(fontFamily: "Galada", fontSize: 25.0),
        ),
        centerTitle: true,
        titleSpacing: 2.0,
      ),
      body: ListView(
        children: <Widget>[
          customcard("Pandas", images[0]),
          customcard("Numpy", images[1]),
          customcard("Sci-Kit-Learn", images[2]),
          customcard("Kivy", images[3]),
          customcard("Tensor Flow", images[4]),
        ],
      ),
    );
  }
}
