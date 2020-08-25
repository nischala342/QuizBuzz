import 'package:QuizBuzz/quizpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    "images/Python.png",
    "images/c.png",
    "images/cpp.png",
    "images/java.png",
    "images/javascript.png",
  ];

  List<String> description = [
    "Python is one of the most popular and fastest programming language since half a decade.\nIf You think you have learnt it.. \nJust test yourself !!",
    "C is a high-level and general-purpose programming language that is ideal for developing firmware or portable applications",
    "C++, being a statically typed programming language is very powerful and Fast.\nit's DMA feature makes it more useful. !",
    "Java has always been one of the best choices for Enterprise World. If you think you have learn the Language...\nJust Test Yourself !!",
    "Javascript is one of the most Popular programming language supporting the Web.\nIt has a wide range of Libraries making it Very Powerful !"
  ];

  Widget customcard(String langname, String image, String description) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => getjson(langname),
            ));
          },
          child: Material(
            color: Colors.black,
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
                        height: 150.0,
                        width: 150.0,
                        child: ClipOval(
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(image),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      langname,
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
                      description,
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
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
       
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "QuizzBuzz",
          style: TextStyle(
              color: Colors.white, fontFamily: "Galada", fontSize: 27.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        titleSpacing: 2.0,
      ),
      body: ListView(
        children: <Widget>[
          customcard("Python", images[0], description[0]),
          customcard("C", images[1], description[1]),
          customcard("Cpp", images[2], description[2]),
          customcard("Java", images[3], description[3]),
          customcard("JavaScript", images[4], description[4]),
        ],
      ),
    );
  }
}
