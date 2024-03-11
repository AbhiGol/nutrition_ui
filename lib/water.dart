import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class WaterPage extends StatefulWidget {
  const WaterPage({super.key});

  @override
  State<WaterPage> createState() => _WaterPageState();
}

class _WaterPageState extends State<WaterPage> {
  static const _backgroundColor = Color.fromARGB(255, 216, 219, 224);

  static const _colors = [
    Color.fromARGB(255, 171, 215, 229),
    Color(0xFF5AC8FA),
  ];

  static const _durations = [
    4000,
    3000,
  ];

  static const _heightPercentages = [
    0.20,
    0.24,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Water",
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
                margin: const EdgeInsets.only(left: 20, right: 20, top: 18),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 13,
                            decoration: const BoxDecoration(
                              color: _backgroundColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                            ),
                          ),
                          SizedBox(
                            height: 226,
                            child: WaveWidget(
                              waveFrequency: 3,
                              config: CustomConfig(
                                  colors: _colors,
                                  durations: _durations,
                                  heightPercentages: _heightPercentages),
                              size:
                                  const Size(double.infinity, double.infinity),
                              backgroundColor: _backgroundColor,
                              waveAmplitude: 0,
                            ),
                          ),
                          Container(
                            height: 13,
                            decoration: const BoxDecoration(
                              color: Color(0xFF5AC8FA),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: SizedBox(
                        height: 250,
                        width: 60,
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 25, top: 15),
                              child: const Text(
                                "Liquid volume",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 25, top: 4),
                                  child: const Text(
                                    "2.1",
                                    style: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 3, top: 17),
                                  child: const Text(
                                    "/3 Liters",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.topCenter,
                                  margin:
                                      const EdgeInsets.only(left: 15, top: 7),
                                  height: 135,
                                  width: 50,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.topCenter,
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 32,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 7),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 10, top: 7),
                                              child: const Text(
                                                "1",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 21),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 4, top: 10),
                                              child: const Text(
                                                "L",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 7),
                                        alignment: Alignment.bottomCenter,
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 32,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topCenter,
                                  margin:
                                      const EdgeInsets.only(left: 20, top: 7),
                                  height: 135,
                                  width: 65,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.topCenter,
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 32,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 7),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 0, top: 7),
                                              child: const Text(
                                                "100",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 21),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 4, top: 10),
                                              child: const Text(
                                                "ML",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 7),
                                        alignment: Alignment.bottomCenter,
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 32,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 30, top: 7),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.black,
                                  ),
                                  height: 135,
                                  width: 50,
                                  child: Column(children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(top: 45),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 5),
                                      child: const Text(
                                        "Add",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                    )
                                  ]),
                                ),
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
                margin: const EdgeInsets.only(top: 23, left: 22),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Water Intake",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 13),
                height: 190,
                width: 460,
                decoration: BoxDecoration(
                  //color: Colors.amber,
                  border: Border.all(
                      width: 2,
                      color: const Color.fromARGB(255, 202, 202, 202)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 12, top: 5),
                          child: const Text(
                            "5",
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 4, top: 18),
                          alignment: Alignment.bottomLeft,
                          child: const Text(
                            "of 6",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.grey),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 210, top: 5),
                          alignment: Alignment.centerRight,
                          child: const Text(
                            "galsses consumed",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: _buildwater(),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 23, bottom: 5),
                          child: const Text(
                            "400",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 2, top: 4, bottom: 5),
                          child: const Text(
                            "Ml",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30, bottom: 5),
                          child: const Text(
                            "600",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 2, top: 4, bottom: 5),
                          child: const Text(
                            "Ml",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30, bottom: 5),
                          child: const Text(
                            "500",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 2, top: 4, bottom: 5),
                          child: const Text(
                            "Ml",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30, bottom: 5),
                          child: const Text(
                            "300",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 2, top: 4, bottom: 5),
                          child: const Text(
                            "Ml",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30, bottom: 5),
                          child: const Text(
                            "300",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 2, top: 4, bottom: 5),
                          child: const Text(
                            "Ml",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 24, top: 17),
                child: const Text(
                  "Water is essential for our bodies to function\nProperty. Staying hydrated is  crucial for\nmaintaining good health,  as our bodies are",
                  style: TextStyle(fontSize: 21, color: Colors.grey),
                ),
              )
            ],
          ),
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
      Water(6, 4, const Color.fromARGB(255, 236, 243, 249)),
    ];
    return Scaffold(
      body: Center(
        child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          primaryXAxis: CategoryAxis(
            arrangeByIndex: true,
            isVisible: false,
          ),
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
            ),
          ],
        ),
      ),
    );
  }
}

class Water {
  final int liter;
  final int month;
  final Color? color;

  Water(this.liter, this.month, this.color);
}
