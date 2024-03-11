import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CaloriesPage extends StatefulWidget {
  const CaloriesPage({super.key});

  @override
  State<CaloriesPage> createState() => _CaloriesPageState();
}

class _CaloriesPageState extends State<CaloriesPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Calories",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined)),
          ],
          leading: IconButton(
            onPressed: () {},
            icon: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
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
                margin: const EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: CircularPercentIndicator(
                  radius: 105,
                  lineWidth: 11,
                  center: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 50, top: 70),
                            child: const Text(
                              "730",
                              style: TextStyle(
                                  fontSize: 34,
                                  color: Color(0xFF3FCC7C),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5, top: 77),
                            child: const Text(
                              "/2000",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "kCal",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  animation: true,
                  animationDuration: 1600,
                  percent: 0.35,
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: const Color(0xFF3FCC7C),
                  startAngle: 190,
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 20),
                height: 80,
                width: 440,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: <Widget>[
                          CircularPercentIndicator(
                            radius: 25,
                            percent: 0.40,
                            progressColor: const Color(0xFFFF9500),
                            startAngle: 170,
                            animation: true,
                            animationDuration: 1600,
                            center: const Text(
                              "40",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 80,
                                  margin:
                                      const EdgeInsets.only(top: 20, left: 7),
                                  child: const Text(
                                    "Protein",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 7),
                                  width: 80,
                                  child: const Text(
                                    "128",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: <Widget>[
                          CircularPercentIndicator(
                            radius: 25,
                            percent: 0.59,
                            progressColor: const Color(0xFFFFCC00),
                            circularStrokeCap: CircularStrokeCap.round,
                            startAngle: 170,
                            animation: true,
                            animationDuration: 1600,
                            center: const Text(
                              "59",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 80,
                                  margin:
                                      const EdgeInsets.only(top: 20, left: 7),
                                  child: const Text(
                                    "Fats",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 7),
                                  width: 80,
                                  child: const Text(
                                    "74",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: <Widget>[
                          CircularPercentIndicator(
                            radius: 25,
                            percent: 0.34,
                            progressColor: const Color(0xFFE91E63),
                            circularStrokeCap: CircularStrokeCap.round,
                            startAngle: 170,
                            animation: true,
                            animationDuration: 1600,
                            center: const Text(
                              "34",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 80,
                                  margin:
                                      const EdgeInsets.only(top: 20, left: 7),
                                  child: const Text(
                                    "Carbs",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 7),
                                  width: 80,
                                  child: const Text(
                                    "203",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 465,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 0),
                      child: const Text(
                        "Analytics",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: const EdgeInsets.only(top: 20, left: 263),
                      child: const Text(
                        "Weekly",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 1),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 24,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                width: 460,
                height: 250,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.3), color: Colors.grey),
                child: _buildcalorie(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildcalorie() {
    final List<Calorie> calorie = [
      Calorie(1400, "29\nMon"),
      Calorie(1000, "30\nTue"),
      Calorie(1600, "1\nWed"),
      Calorie(1250, "2\nThu"),
      Calorie(1500, "3\nFri"),
      Calorie(750, "4\nSat"),
      Calorie(0, "5\nSun")
    ];
    return Scaffold(
      body: Center(
        child: SfCartesianChart(
          borderColor: Colors.transparent,
          primaryXAxis: CategoryAxis(
            isVisible: true,
            labelStyle: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 14),
            labelPlacement: LabelPlacement.betweenTicks,
            arrangeByIndex: true,
          ),
          primaryYAxis: NumericAxis(
              maximum: 1600,
              interval: 400,
              minimum: 0,
              labelStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold)),
          series: <CartesianSeries<Calorie, String>>[
            ColumnSeries<Calorie, String>(
              dataSource: calorie,
              width: 0.2,
              xValueMapper: (Calorie calorie, _) => calorie.calorie,
              yValueMapper: (Calorie calorie, _) => calorie.month,
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              color: const Color(0xFF2FCC7C),
            ),
          ],
        ),
      ),
    );
  }
}

class Calorie {
  int month;
  String calorie;

  Calorie(this.month, this.calorie);
}
