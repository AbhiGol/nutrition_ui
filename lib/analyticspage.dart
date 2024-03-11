import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:nutrition_ui/calories.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF232322),
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
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 10, left: 15),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Calories consumed",
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 235,
                width: 465,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: _buildcalorie(),
                ),
              )
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
