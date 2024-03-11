import 'package:flutter/material.dart';

class WaterParameter extends StatefulWidget {
  const WaterParameter({super.key});

  @override
  State<WaterParameter> createState() => _WaterParameterState();
}

class _WaterParameterState extends State<WaterParameter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Water Parameters"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 12, top: 13, bottom: 3),
              child: Text(
                "Quantity per day",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    //prefix: Text("Liters"),
                    suffix: Text("Liters")
                    //hintText: 'Enter a search term',
                    ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12, top: 13, bottom: 3),
              child: Text(
                "Number of glasses per day",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), suffix: Text("Glasses")),
              ),
            ),
            GestureDetector(
              onTap: () {
                //print("object");
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 20, left: 20, top: 430),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Text(
                  'Save',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
