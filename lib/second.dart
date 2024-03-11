import 'package:flutter/material.dart';
import 'package:nutrition_ui/home.dart';
import 'package:nutrition_ui/third.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF232322),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 50, left: 420),
              child: IconButton(
                icon: const Icon(
                  Icons.cancel_outlined,
                  size: 33,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).push(_homeRoute());
                },
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 40, top: 450),
              child: const Text(
                "Count Your calories easily",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 40, bottom: 20, top: 15),
              child: const Text(
                "Proper nutrition starts with knowing what\nyou eat. Our app makes it easy to track your\ndaily calories intake, helping you make\ninformed choices about what to eat and when.",
                style: TextStyle(color: Colors.grey, fontSize: 22),
              ),
            ),
            Container(
              width: 430,
              height: 55,
              //color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 8,
                    width: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: const Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xFF323232),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: const Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xFF323232),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: Container(
                width: 430,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xFF3FCC7C),
                ),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: const Text(
                        "Next  ",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                    Container(
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.of(context).push(_thirdRoute());
              },
            ),
          ],
        ),
      ),
    );
  }

  Route _thirdRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Third(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeInCirc;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Route _homeRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeInCirc;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
