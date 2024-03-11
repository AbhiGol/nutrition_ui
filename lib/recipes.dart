import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:nutrition_ui/bs.dart';
import 'package:nutrition_ui/bwm.dart';
import 'package:nutrition_ui/model_theme.dart';
import 'package:nutrition_ui/pwv.dart';
import 'package:nutrition_ui/ss.dart';
import 'package:nutrition_ui/swt.dart';
import 'package:nutrition_ui/swv.dart';
import 'package:provider/provider.dart';
//import 'package:theme_changer/model_theme.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  bool isdark = false;
  ThemeMode _themeMode = ThemeMode.system;
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
      if (_themeMode == ThemeMode.dark) {
        isdark = true;
      } else {
        isdark = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
        return MaterialApp(
          //theme: ThemeData.dark(),
          theme: themeNotifier.isDark
              ? ThemeData(brightness: Brightness.dark)
              : ThemeData(brightness: Brightness.light),
          home: Scaffold(
            backgroundColor: const Color(0xFF232322),
            appBar: AppBar(
              backgroundColor: Color(0xFF232322),
              title:
                  const Text("Recipes", style: TextStyle(color: Colors.white)),
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
            body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal[200],
                  ),
                  padding: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://st5.depositphotos.com/16122460/68390/i/450/depositphotos_683902638-stock-photo-meat-solyanka-soup-sausages-olives.jpg'),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(_ssRoute());
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 90),
                            child: const Text(
                              "Solyanka soup",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 20),
                                  child: const Text(
                                    "27 kcal",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 28),
                                  child: const Icon(
                                    Icons.timer,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 4),
                                  child: const Text(
                                    "1.15 Hours",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal[200],
                  ),
                  padding: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://www.earthboundfarm.com/wp-content/uploads/2023/11/Earthbound_EverythingbutTheTurkeySalad-3.jpg'),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(_swtRoute());
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20, top: 50),
                            child: const Text(
                              "Salad with turkey",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 20),
                                  child: const Text(
                                    "61 kcal",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 28),
                                  child: const Icon(
                                    Icons.timer,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 4),
                                  child: const Text(
                                    "0.15 Hours",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal[200],
                  ),
                  padding: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://c8.alamy.com/comp/2JBX7AX/salad-with-veal-and-tomatoes-beef-steak-with-raw-vegetables-mix-side-view-grilled-meat-with-garnish-close-up-delicious-main-course-on-table-2JBX7AX.jpg'),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(_swvRoute());
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 90),
                            child: const Text(
                              "Salad with veal",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 20),
                                  child: const Text(
                                    "58 kcal",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 28),
                                  child: const Icon(
                                    Icons.timer,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 4),
                                  child: const Text(
                                    "0.45 Hours",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal[200],
                  ),
                  padding: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://media.istockphoto.com/id/857927726/photo/pasta-with-meat-tomato-sauce-and-vegetables.jpg?s=612x612&w=0&k=20&c=1bcoXcBKM7Hb1ASweDx-vcwXEgy-WrCGM71dVP2Cp0w='),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(_pwvRoute());
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20, top: 50),
                            child: const Text(
                              "Pasta with vegetables",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 20),
                                  child: const Text(
                                    "73 kcal",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 28),
                                  child: const Icon(
                                    Icons.timer,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 4),
                                  child: const Text(
                                    "0.25 Hours",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal[200],
                  ),
                  padding: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://www.shutterstock.com/image-photo/fried-salmon-fillet-potatoes-lime-600nw-1826868410.jpg'),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(_bsRoute());
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 90),
                            child: const Text(
                              "Baked salmon",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 20),
                                  child: const Text(
                                    "54 kcal",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 28),
                                  child: const Icon(
                                    Icons.timer,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 4),
                                  child: const Text(
                                    "1.15 Hours",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal[200],
                  ),
                  //padding: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRRTBSarHvGGSz43kuykOGmt0orEvXMFcibU6Z_ZpOGg&s'),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(_bwmRoute());
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 50, left: 20),
                            child: const Text(
                              "Broccole with mushrooms",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 20),
                                  child: const Text(
                                    "43 kcal",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 28),
                                  child: const Icon(
                                    Icons.timer,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 4),
                                  child: const Text(
                                    "2.15 Hours",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
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
        );
      }),
    );
  }
}

Route _ssRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SS(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.5, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _swtRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SWT(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.5, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _swvRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SWV(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.5, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _pwvRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const PWV(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.5, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _bsRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const BS(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.5, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _bwmRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const BWM(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.5, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
