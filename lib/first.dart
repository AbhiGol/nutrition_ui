import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:nutrition_ui/second.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF232322),
        body: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 40, top: 540),
              child: const Text(
                "Your Personalized\nnutrition companion",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 40, bottom: 25, top: 15),
              child: const Text(
                "Mobile application that provides\ncustomised nutrition plan based on your\ndietary preferences, health goals, and\nlifestyle.",
                style: TextStyle(color: Colors.grey, fontSize: 22),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.only(bottom: 0),
              child: AnimatedToggleSwitch<bool>.dual(
                current: value,
                first: false,
                second: true,
                spacing: 350.0,
                style: const ToggleStyle(
                  borderColor: Colors.transparent,
                  backgroundColor: Color(0xFF323232),
                ),
                borderWidth: 5.0,
                height: 60,
                onChanged: (b) {
                  setState(() => value = b);
                  if (b) {
                    Navigator.of(context).push(_secondRoute());
                  }
                },
                styleBuilder: (b) => ToggleStyle(
                    indicatorColor:
                        b ? const Color(0xFF3FCC7C) : const Color(0xFF3FCC7C)),
                iconBuilder: (value) => value
                    ? const Icon(Icons.arrow_forward)
                    : const Icon(Icons.arrow_forward),
                textBuilder: (value) => value
                    ? const Center(child: Text(''))
                    : Container(
                        alignment: Alignment.centerRight,
                        child: const Text(
                          '>            >            >                 Start',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 15),
              child: TextButton(
                child: const Text(
                  "Create an account",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  Route _secondRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Second(),
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
