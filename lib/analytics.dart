import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            margin: const EdgeInsets.only(top: 10, left: 13),
            child: const ProfilePicture(
              name: "Abhi",
              radius: 50,
              fontsize: 21,
              img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
            ),
          ),
          title: const Text("Analytics"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 11, top: 8, bottom: 9),
              child: const Text(
                "Calories consumed",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.only(left: 11, right: 11),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: const Color(0xFF323232)),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                        left: 12,
                      ),
                      child: const Text(
                        "",
                        style: TextStyle(fontSize: 7, color: Colors.white),
                      ),
                    ),
                    Expanded(child: _buildcalories1()),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 12,
                      ),
                      child: const Text(
                        "",
                        style: TextStyle(fontSize: 7, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 11, top: 12, bottom: 9),
              child: const Text(
                "Water consumed",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(left: 11, right: 11),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFF323232)),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 12, top: 5),
                          child: const Text(
                            "5",
                            style: TextStyle(fontSize: 26, color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 2, top: 10),
                          alignment: Alignment.bottomLeft,
                          child: const Text(
                            "of 6",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 290, top: 5),
                          alignment: Alignment.centerRight,
                          child: const Text(
                            "galsses consumed",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: _buildwater()),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 23, bottom: 5),
                          child: const Text(
                            "400",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 2, top: 4, bottom: 5),
                          child: const Text(
                            "Ml",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30, bottom: 5),
                          child: const Text(
                            "600",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 2, top: 4, bottom: 5),
                          child: const Text(
                            "Ml",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30, bottom: 5),
                          child: const Text(
                            "500",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 2, top: 4, bottom: 5),
                          child: const Text(
                            "Ml",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30, bottom: 5),
                          child: const Text(
                            "300",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 2, top: 4, bottom: 5),
                          child: const Text(
                            "Ml",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30, bottom: 5),
                          child: const Text(
                            "300",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 2, top: 4, bottom: 5),
                          child: const Text(
                            "Ml",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: Container(
                margin: const EdgeInsets.only(left: 11, right: 11, top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: const Color(0xFF323232)),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                        left: 12,
                      ),
                      child: const Text(
                        "",
                        style: TextStyle(fontSize: 7, color: Colors.white),
                      ),
                    ),
                    Expanded(child: Container(child: _buildcalories2())),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 12,
                      ),
                      child: const Text(
                        "",
                        style: TextStyle(fontSize: 7, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildcalories1() {
    final List<Calories> calories = [
      Calories(1400, "29\nMon"),
      Calories(1000, "30\nTue"),
      Calories(1600, "1\nWed"),
      Calories(1250, "2\nThu"),
      Calories(1500, "3\nFri"),
      Calories(750, "4\nSat"),
      Calories(0, "5\nSun")
    ];
    return Scaffold(
      body: Center(
        child: SfCartesianChart(
          backgroundColor: const Color(0xFF323232),
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
          series: <CartesianSeries<Calories, String>>[
            ColumnSeries<Calories, String>(
              dataSource: calories,
              width: 0.2,
              xValueMapper: (Calories calories, _) => calories.calories,
              yValueMapper: (Calories calories, _) => calories.month,
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              color: const Color(0xFF2FCC7C),
            ),
          ],
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
        child: SfCartesianChart(
          backgroundColor: const Color(0xFF323232),
          primaryXAxis: CategoryAxis(
            isVisible: true,
            labelStyle: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
            labelPlacement: LabelPlacement.betweenTicks,
            arrangeByIndex: true,
            //tickPosition: TickPosition.inside,
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
    );
  }

  Widget _buildwater() {
    final List<Water> water = [
      Water(1, 4, const Color(0xFF5AC8FA)),
      Water(2, 6, const Color(0xFF5AC8FA)),
      Water(3, 5, const Color(0xFF5AC8FA)),
      Water(4, 3, const Color(0xFF5AC8FA)),
      Water(5, 3, const Color(0xFF5AC8FA)),
      Water(6, 4, const Color(0xFFFFFFFF)),
    ];
    return Scaffold(
      body: Center(
        child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          backgroundColor: const Color(0xFF323232),
          primaryXAxis: CategoryAxis(arrangeByIndex: true, isVisible: false),
          primaryYAxis: NumericAxis(
            maximum: 6,
            minimum: 0,
            isVisible: false,
          ),
          series: <CartesianSeries<Water, int>>[
            ColumnSeries<Water, int>(
              dataSource: water,
              isVisible: true,
              width: 0.35,
              xValueMapper: (Water water, _) => water.liter,
              yValueMapper: (Water water, _) => water.month,
              pointColorMapper: (Water water, _) => water.color,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            )
          ],
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

class Water {
  final int liter;
  final int month;
  final Color? color;

  Water(this.liter, this.month, this.color);
}
