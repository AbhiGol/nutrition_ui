import 'package:flutter/material.dart';
import 'package:nutrition_ui/fourth.dart';
import 'package:nutrition_ui/home.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
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
              margin: const EdgeInsets.only(left: 40, top: 470),
              child: const Text(
                "Healthy habits start here",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 40, bottom: 20, top: 15),
              child: const Text(
                "Drinking enough water and getting enough\nsleep are essential for your health. Our app\nhelps you keep track of your daily water\nintake and sleep patterns.",
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
                    child: const Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xFF323232),
                    ),
                  ),
                  Container(
                    height: 8,
                    width: 32,
                    margin: const EdgeInsets.only(left: 8),
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
                Navigator.of(context).push(_fourthRoute());
              },
            ),
          ],
        ),
      ),
    );
  }

  Route _fourthRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Fourth(),
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
