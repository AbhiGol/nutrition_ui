import 'package:flutter/material.dart';
import 'package:nutrition_ui/home.dart';

class Fourth extends StatefulWidget {
  const Fourth({super.key});

  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
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
              margin: const EdgeInsets.only(left: 40, top: 490),
              child: const Text(
                "Discover healthy recipes",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 40, bottom: 20, top: 15),
              child: const Text(
                "Eating healthy doesn't have to be boring.\nOur app offers a variety of healthy recipes\nthat are both delicious and easy to make.",
                style: TextStyle(color: Colors.grey, fontSize: 22),
              ),
            ),
            Container(
              width: 430,
              height: 55,
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
                    margin: const EdgeInsets.only(left: 8),
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
                        "Get Started",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.of(context).push(_homeRoute());
              },
            ),
          ],
        ),
      ),
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
