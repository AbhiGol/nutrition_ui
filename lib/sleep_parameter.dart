import 'package:flutter/material.dart';

class SleepParameter extends StatefulWidget {
  const SleepParameter({super.key});

  @override
  State<SleepParameter> createState() => _SleepParameterState();
}

class _SleepParameterState extends State<SleepParameter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sleep Parameters"),
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
                    border: OutlineInputBorder(), suffix: Text("Hours")),
              ),
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.only(top: 16, left: 12, right: 12),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 160),
                    child: const Icon(
                      Icons.watch_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 7),
                    child: const Text(
                      "Link smart watch",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                //sprint("object");
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 20, left: 20, top: 480),
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
