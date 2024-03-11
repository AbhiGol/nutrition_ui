import 'package:flutter/material.dart';

class BWM extends StatelessWidget {
  const BWM({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Recipes",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: const <Widget>[Icon(Icons.star_border_outlined)],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.only(top: 13, left: 17, right: 17),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRRTBSarHvGGSz43kuykOGmt0orEvXMFcibU6Z_ZpOGg&s'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 17, bottom: 2),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 15),
                    child: const Text(
                      "Broccole with mushrooms",
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "By John Smith",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(top: 1, left: 17, right: 17),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(top: 1),
                              alignment: Alignment.centerLeft,
                              child: const Icon(
                                Icons.wifi,
                                size: 24,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 1),
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "Weight",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "320",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: 6, left: 5),
                                    child: const Text(
                                      "Grams",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 80,
                      width: 1,
                      color: Colors.grey,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 18),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(top: 1),
                              alignment: Alignment.centerLeft,
                              child: const Icon(
                                Icons.wifi,
                                size: 24,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 1),
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "Calories",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "43",
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: 6, left: 5),
                                    child: const Text(
                                      "cKal",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 80,
                      width: 1,
                      color: Colors.grey,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 18),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(top: 1),
                              alignment: Alignment.centerLeft,
                              child: const Icon(
                                Icons.access_time,
                                size: 25,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 1),
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "Time",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "135",
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: 6, left: 5),
                                    child: const Text(
                                      "Minutes",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 0, left: 17, right: 17),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Ingredients:",
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.only(left: 17, right: 17, top: 15),
                //color: Colors.yellow,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 224, 220, 224),
                            ),
                            margin: const EdgeInsets.only(left: 0),
                            child: const Text(" "),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 11),
                            child: const Text(
                              "Cooked turkey breast",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 195),
                            child: const Text(
                              "200 g",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 13),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 224, 220, 224),
                            ),
                            child: const Text(" "),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 11),
                            child: const Text(
                              "Avocado",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 300),
                            child: const Text(
                              "70 g",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 224, 220, 224),
                            ),
                            child: const Text(" "),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 11),
                            child: const Text(
                              "Red bell pepper",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 240),
                            child: const Text(
                              "100 g",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
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
}
