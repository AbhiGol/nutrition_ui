import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:nutrition_ui/activity.dart';
import 'package:nutrition_ui/calories.dart';
import 'package:nutrition_ui/sleep.dart';
import 'package:nutrition_ui/water.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF232322),
        appBar: AppBar(
          backgroundColor: const Color(0xFF232322),
          title: Container(
            alignment: Alignment.center,
            child: const Text(
              "Activity",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).push(_activityRoute());
              },
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.white,
                ))
          ],
          leading: Container(
            margin: const EdgeInsets.only(top: 10, left: 13),
            child: const ProfilePicture(
              name: "Abhi",
              radius: 50,
              fontsize: 21,
              img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                width: 460,
                margin: const EdgeInsets.only(top: 25, left: 23),
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
                                      center: const Text(
                                        "40",
                                        style: TextStyle(color: Colors.white),
                                      ),
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
                                                  color: Colors.white,
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
                                                  color: Colors.grey,
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
                                      center: const Text("59",
                                          style:
                                              TextStyle(color: Colors.white)),
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
                                                  color: Colors.white,
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
                                                  color: Colors.grey,
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
                                      center: const Text("34",
                                          style:
                                              TextStyle(color: Colors.white)),
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
                                                  color: Colors.white,
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
                                                  color: Colors.grey,
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
              Container(
                margin: const EdgeInsets.only(top: 7),
                width: 465,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(_waterRoute());
                        },
                        child: Container(
                          height: 110,
                          margin: const EdgeInsets.only(left: 14),
                          decoration: BoxDecoration(
                            color: const Color(0xFF5AC8FA),
                            borderRadius: BorderRadius.circular(20),
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
                                      margin: const EdgeInsets.only(left: 10),
                                      alignment: Alignment.bottomLeft,
                                      child: const Text(
                                        "Water",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 110),
                                      alignment: Alignment.bottomRight,
                                      child: const Icon(
                                        Icons.water_drop_outlined,
                                        size: 33,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 0),
                                height: 40,
                                width: 420,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 10, right: 6),
                                      child: const Text(
                                        "2.1",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold),
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
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 4, top: 9),
                                child: LinearPercentIndicator(
                                  width: 210,
                                  lineHeight: 3,
                                  percent: .73,
                                  progressColor: Colors.white,
                                  animation: true,
                                  animationDuration: 1500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(_sleepRoute());
                        },
                        child: Container(
                          height: 110,
                          margin: const EdgeInsets.only(left: 14),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF9500),
                            borderRadius: BorderRadius.circular(20),
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
                                      margin: const EdgeInsets.only(left: 10),
                                      alignment: Alignment.bottomLeft,
                                      child: const Text(
                                        "Sleep",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 110),
                                      alignment: Alignment.bottomRight,
                                      child: const Icon(
                                        Icons.dark_mode_outlined,
                                        size: 33,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 0),
                                height: 40,
                                width: 420,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 10, right: 6),
                                      child: const Text(
                                        "7.40",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold),
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
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 4, top: 9),
                                child: LinearPercentIndicator(
                                  width: 210,
                                  lineHeight: 3,
                                  percent: .95,
                                  progressColor: Colors.white,
                                  animation: true,
                                  animationDuration: 1500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 460,
                margin: const EdgeInsets.only(top: 19),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 14),
                      child: const Text(
                        "Today's food",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5, left: 165),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 27,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 7, left: 14),
                      child: const Text(
                        "Add' Meals",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 455,
                height: 150,
                margin: const EdgeInsets.only(left: 10, top: 15),
                decoration: BoxDecoration(
                  color: const Color(0xFF323232),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 455,
                      margin: const EdgeInsets.only(top: 10, left: 15),
                      child: Row(
                        children: <Widget>[
                          const Text(
                            "Breakfast",
                            style: TextStyle(fontSize: 19, color: Colors.white),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 260),
                            child: const Text(
                              "7.46 AM",
                              style:
                                  TextStyle(fontSize: 19, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 455,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: const Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin:
                                      const EdgeInsets.only(left: 14, top: 4),
                                  child: const Text(
                                    "Evaluation",
                                    style: TextStyle(
                                        fontSize: 19, color: Colors.white),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 14, top: 4),
                                      child: const Text(
                                        "4.4",
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 4, top: 10),
                                      child: const Text(
                                        "/5.0",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 9),
                            height: 90,
                            width: 2,
                            color: Colors.white,
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: const Icon(
                                    Icons.fire_extinguisher_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin:
                                      const EdgeInsets.only(left: 14, top: 4),
                                  child: const Text(
                                    "Calories",
                                    style: TextStyle(
                                        fontSize: 19, color: Colors.white),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 14, top: 4),
                                      child: const Text(
                                        "360",
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 4, top: 10),
                                      child: const Text(
                                        "cKal",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 9),
                            height: 90,
                            width: 2,
                            color: Colors.white,
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: const Icon(
                                    Icons.water_drop_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin:
                                      const EdgeInsets.only(left: 14, top: 4),
                                  child: const Text(
                                    "Water",
                                    style: TextStyle(
                                        fontSize: 19, color: Colors.white),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 14, top: 4),
                                      child: const Text(
                                        "0.4",
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 4, top: 10),
                                      child: const Text(
                                        "Liters",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 455,
                height: 150,
                margin: const EdgeInsets.only(left: 10, top: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFF323232),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 455,
                      margin: const EdgeInsets.only(top: 10, left: 15),
                      child: Row(
                        children: <Widget>[
                          const Text(
                            "Lunch",
                            style: TextStyle(fontSize: 19, color: Colors.white),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 290),
                            child: const Text(
                              "1.23 PM",
                              style:
                                  TextStyle(fontSize: 19, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 455,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: const Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin:
                                      const EdgeInsets.only(left: 14, top: 4),
                                  child: const Text(
                                    "Evaluation",
                                    style: TextStyle(
                                        fontSize: 19, color: Colors.white),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 14, top: 4),
                                      child: const Text(
                                        "4.4",
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 4, top: 10),
                                      child: const Text(
                                        "/5.0",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 9),
                            height: 90,
                            width: 2,
                            color: Colors.white,
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: const Icon(
                                    Icons.fire_extinguisher_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin:
                                      const EdgeInsets.only(left: 14, top: 4),
                                  child: const Text(
                                    "Calories",
                                    style: TextStyle(
                                        fontSize: 19, color: Colors.white),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 14, top: 4),
                                      child: const Text(
                                        "360",
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 4, top: 10),
                                      child: const Text(
                                        "cKal",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 9),
                            height: 90,
                            width: 2,
                            color: Colors.white,
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: const Icon(
                                    Icons.water_drop_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin:
                                      const EdgeInsets.only(left: 14, top: 4),
                                  child: const Text(
                                    "Water",
                                    style: TextStyle(
                                        fontSize: 19, color: Colors.white),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 14, top: 4),
                                      child: const Text(
                                        "0.4",
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 4, top: 10),
                                      child: const Text(
                                        "Liters",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
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

  Route _activityRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Activity(),
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
}
