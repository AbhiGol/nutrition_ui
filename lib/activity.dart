import 'package:flutter/material.dart';
import 'package:nutrition_ui/calories.dart';
import 'package:nutrition_ui/sleep.dart';
import 'package:nutrition_ui/water.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  Route _caloriesRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const CaloriesPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Route _waterRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const WaterPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Route _sleepRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Sleep(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Activity by day",
            style: TextStyle(fontSize: 25),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined)),
          ],
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 20,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 1, bottom: 2),
                          child: const Text(
                            "Mon",
                            style: TextStyle(
                                color: Colors.black26,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 2),
                          child: const CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 218, 226, 230),
                            radius: 20,
                            child: Text(
                              "29",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 1, bottom: 2),
                          child: const Text(
                            "Tue",
                            style: TextStyle(
                                color: Colors.black26,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 2),
                          child: const CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 218, 226, 230),
                            radius: 20,
                            child: Text(
                              "30",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 1, bottom: 2),
                          child: const Text(
                            "Wed",
                            style: TextStyle(
                                color: Colors.black26,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 2),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 218, 226, 230),
                            child: Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 1, bottom: 2),
                          child: const Text(
                            "Thu",
                            style: TextStyle(
                                color: Colors.black26,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 2),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 218, 226, 230),
                            child: Text(
                              "2",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 1, bottom: 2),
                          child: const Text(
                            "Fri",
                            style: TextStyle(
                                color: Colors.black26,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 2),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 218, 226, 230),
                            child: Text(
                              "3",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 1, bottom: 2),
                          child: const Text(
                            "Sat",
                            style: TextStyle(
                                color: Colors.black26,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 2),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black,
                            child: Text(
                              "4",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 2),
                          width: 40,
                          height: 2,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 1, bottom: 2),
                          child: const Text(
                            "Sun",
                            style: TextStyle(
                                color: Colors.black26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 2),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 218, 226, 230),
                            child: Text(
                              "5",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 460,
                margin: const EdgeInsets.only(top: 25),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: const Color(0xFF3FCC7C),
                        ),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 8,
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 12, left: 16),
                                      child: const Text(
                                        "Calories",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 12, right: 12),
                                      alignment: Alignment.centerLeft,
                                      child: const Icon(
                                        Icons.fire_hydrant_alt,
                                        size: 23,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: CircularPercentIndicator(
                                radius: 85,
                                animation: true,
                                animationDuration: 1500,
                                circularStrokeCap: CircularStrokeCap.round,
                                percent: 0.60,
                                progressColor:
                                    const Color.fromARGB(255, 152, 219, 181),
                                backgroundColor: Colors.white,
                                center: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(_caloriesRoute());
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        margin: const EdgeInsets.only(top: 40),
                                        //color: Colors.amber,
                                        child: const Text(
                                          "730",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 40),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 30),
                                        child: const Text(
                                          "kCal",
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                lineWidth: 10,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: const EdgeInsets.only(left: 18),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: CircularPercentIndicator(
                                      backgroundColor: Colors.orange,
                                      progressColor: const Color.fromARGB(
                                          255, 218, 226, 230),
                                      percent: .55,
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      animation: true,
                                      animationDuration: 1500,
                                      startAngle: 4.3,
                                      radius: 20,
                                      lineWidth: 4,
                                      center: const Text("40"),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 8,
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 22),
                                            alignment: Alignment.bottomLeft,
                                            child: const Text(
                                              "  Protein",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 1),
                                            alignment: Alignment.topLeft,
                                            child: const Text(
                                              "  128",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.black45,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: CircularPercentIndicator(
                                      backgroundColor: Colors.yellow,
                                      progressColor: const Color.fromARGB(
                                          255, 218, 226, 230),
                                      percent: .40,
                                      startAngle: 45.3,
                                      animation: true,
                                      animationDuration: 1500,
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      radius: 20,
                                      lineWidth: 4,
                                      center: const Text("59"),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 8,
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 22),
                                            alignment: Alignment.bottomLeft,
                                            child: const Text(
                                              "  Fats",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 1),
                                            alignment: Alignment.topLeft,
                                            child: const Text(
                                              "  74",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.black45,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: CircularPercentIndicator(
                                      backgroundColor: Colors.pink,
                                      progressColor: const Color.fromARGB(
                                          255, 218, 226, 230),
                                      percent: .55,
                                      startAngle: 320.3,
                                      animation: true,
                                      animationDuration: 1500,
                                      radius: 20,
                                      lineWidth: 4,
                                      center: const Text("34"),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 8,
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 22),
                                            alignment: Alignment.bottomLeft,
                                            child: const Text(
                                              "  Carbs",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 1),
                                            alignment: Alignment.topLeft,
                                            child: const Text(
                                              "  203",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.black45,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(_waterRoute());
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 7),
                  height: 100,
                  width: 455,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    //color: Colors.amber,
                    border: Border.all(color: Colors.black26, width: 1.5),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.bottomLeft,
                        height: 40,
                        width: 430,
                        //color: Colors.amberAccent,
                        child: Row(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: const Text(
                                "Water",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 330),
                              alignment: Alignment.bottomRight,
                              child: const Icon(
                                Icons.water_drop_outlined,
                                size: 33,
                                color: Color(0xFF5AC8FA),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 2),
                        height: 40,
                        width: 430,
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(right: 6),
                              child: const Text(
                                "2.1",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text(
                                "Liters",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black26,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 272),
                              child: const Text(
                                "73",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 6, top: 20),
                              child: const Text(
                                "%",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black26,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 2, top: 6),
                        child: LinearPercentIndicator(
                          width: 450,
                          lineHeight: 3,
                          percent: .73,
                          progressColor: const Color(0xFF5AC8FA),
                          animation: true,
                          animationDuration: 1500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(_sleepRoute());
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 7),
                  height: 100,
                  width: 455,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black26, width: 1.5),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.bottomLeft,
                        height: 40,
                        width: 430,
                        child: Row(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: const Text(
                                "Sleep",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 335),
                              alignment: Alignment.bottomRight,
                              child: const Icon(
                                Icons.dark_mode_outlined,
                                size: 33,
                                color: Color(0xFFFF9500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 2),
                        height: 40,
                        width: 430,
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(right: 6),
                              child: const Text(
                                "7.40",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text(
                                "Hours",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black26,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 242),
                              child: const Text(
                                "95",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 6, top: 20),
                              child: const Text(
                                "%",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black26,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 2, top: 6),
                        child: LinearPercentIndicator(
                          width: 450,
                          lineHeight: 3,
                          percent: .95,
                          progressColor: const Color(0xFFFF9500),
                          animation: true,
                          animationDuration: 1500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 7),
                width: 455,
                height: 130,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26, width: 1.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(top: 7, left: 10),
                            child: const Icon(
                              Icons.favorite_border_outlined,
                              size: 35,
                            ),
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.only(top: 2, left: 10),
                              child: const Text(
                                "Pulse",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500),
                              )),
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                "78",
                                style: TextStyle(
                                    fontSize: 33, fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 105,
                      width: 1,
                      color: Colors.black,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(top: 7, left: 10),
                            child: const Icon(
                              Icons.favorite_border_outlined,
                              size: 35,
                            ),
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.only(top: 2, left: 10),
                              child: const Text(
                                "Weight",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500),
                              )),
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                "64",
                                style: TextStyle(
                                    fontSize: 33, fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 105,
                      width: 1,
                      color: Colors.black,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(top: 7, left: 10),
                            child: const Icon(
                              Icons.directions_walk_outlined,
                              size: 35,
                            ),
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.only(top: 2, left: 10),
                              child: const Text(
                                "Steps",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500),
                              )),
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                "7K",
                                style: TextStyle(
                                    fontSize: 33, fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
