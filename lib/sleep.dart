import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Sleep extends StatefulWidget {
  const Sleep({super.key});

  @override
  State<Sleep> createState() => _SleepState();
}

class _SleepState extends State<Sleep> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF232322),
        appBar: AppBar(
          backgroundColor: const Color(0xFF232322),
          title: const Text(
            "Sleep",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
                )),
          ],
          leading: IconButton(
            onPressed: () {},
            icon: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 75,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 55,
                      margin: const EdgeInsets.only(left: 23, top: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF323232),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            child: const Text(
                              "Mon",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 197, 197, 197)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 1),
                            child: const Text(
                              "29",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      margin: const EdgeInsets.only(left: 11, top: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF323232),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            child: const Text(
                              "Tue",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 197, 197, 197)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 1),
                            child: const Text(
                              "30",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      margin: const EdgeInsets.only(left: 11, top: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF323232),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            child: const Text(
                              "Wed",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 197, 197, 197)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 1),
                            child: const Text(
                              "1",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      margin: const EdgeInsets.only(left: 11, top: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF323232),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            child: const Text(
                              "Thu",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 197, 197, 197)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 1),
                            child: const Text(
                              "2",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      margin: const EdgeInsets.only(left: 11, top: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF323232),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            child: const Text(
                              "Fri",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 197, 197, 197)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 1),
                            child: const Text(
                              "3",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      margin: const EdgeInsets.only(left: 11, top: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            child: const Text(
                              "Sat",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 133, 133, 133)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 1),
                            child: const Text(
                              "4",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      margin:
                          const EdgeInsets.only(left: 11, top: 7, right: 21),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF323232),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            child: const Text(
                              "Sun",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 197, 197, 197)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 1),
                            child: const Text(
                              "5",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 35),
                child: const Text(
                  "Hours",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 190),
                      child: const Text(
                        "7.40",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 12),
                      child: const Text(
                        "/8.00",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 33,
                width: 450,
                margin: const EdgeInsets.only(top: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xFFFF9500),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 60),
                      height: 33,
                      width: 100,
                      color: const Color.fromARGB(255, 255, 128, 0),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 35),
                      height: 33,
                      width: 30,
                      color: const Color.fromARGB(255, 255, 128, 0),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      height: 33,
                      width: 5,
                      color: const Color(0xFFFFCC00),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 33,
                      width: 25,
                      color: const Color.fromARGB(255, 255, 128, 0),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      height: 33,
                      width: 60,
                      color: const Color.fromARGB(255, 255, 128, 0),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 27),
                      child: const Text(
                        "22.32 PM",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 300),
                      child: const Text(
                        "5.08 AM",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                //width: 450,
                margin: const EdgeInsets.only(top: 15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                "3.18",
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                const Icon(
                                  Icons.circle,
                                  size: 14,
                                  color: Color.fromARGB(255, 255, 128, 0),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 2),
                                  child: const Text(
                                    "Deep sleep 43%",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                "4.15",
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                const Icon(
                                  Icons.circle,
                                  size: 14,
                                  color: Color(0xFFFF9500),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 2),
                                  child: const Text(
                                    "Light sleep 56%",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                "0.07",
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                const Icon(
                                  Icons.circle,
                                  size: 14,
                                  color: Color(0xFFFFCC00),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 2),
                                  child: const Text(
                                    "Wake up time",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  "Sleep assessment",
                  style: TextStyle(color: Colors.white, fontSize: 31),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 190),
                      child: const Text(
                        "4.6",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 12),
                      child: const Text(
                        "/5.0",
                        style: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  "You sleep better than 53% of users",
                  style: TextStyle(color: Colors.grey, fontSize: 21),
                ),
              ),
              SizedBox(
                width: 465,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 7),
                      child: const Text(
                        "Analytics",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: const EdgeInsets.only(top: 20, left: 250),
                      child: const Text(
                        "Weekly",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 1),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 30,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 270,
                width: 450,
                child: Container(
                    margin: const EdgeInsets.only(top: 7, bottom: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 450,
                          decoration: const BoxDecoration(
                            color: Color(0xFF323232),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                          ),
                          child: const Text(" "),
                        ),
                        Expanded(
                          child: Container(
                            child: _buildcalories2(),
                          ),
                        ),
                        Container(
                          width: 450,
                          decoration: const BoxDecoration(
                            color: Color(0xFF323232),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                          ),
                          child: const Text(" "),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildcalories2() {
    final List<Calories> calories = [
      Calories(8, "29\nMon"),
      Calories(7, "30\nTue"),
      Calories(9, "1\nWed"),
      Calories(7, "2\nThu"),
      Calories(8, "3\nFri"),
      Calories(8, "4\nSat"),
      Calories(0, "5\nSun")
    ];
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          alignment: Alignment.center,
          child: SfCartesianChart(
            plotAreaBorderWidth: 0,
            isTransposed: false,
            backgroundColor: const Color(0xFF323232),
            primaryXAxis: CategoryAxis(
              isVisible: true,
              labelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              labelPlacement: LabelPlacement.betweenTicks,
              arrangeByIndex: true,
              tickPosition: TickPosition.inside,
            ),
            primaryYAxis: NumericAxis(
                maximum: 10,
                interval: 2,
                minimum: 0,
                labelStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold)),
            series: <CartesianSeries<Calories, String>>[
              ColumnSeries<Calories, String>(
                dataSource: calories,
                width: 0.2,
                xValueMapper: (Calories calories, _) => calories.calories,
                yValueMapper: (Calories calories, _) => calories.month,
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                color: const Color(0xFFFF9500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Calories {
  int month;
  String calories;

  Calories(this.month, this.calories);
}
