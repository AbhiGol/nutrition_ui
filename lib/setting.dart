import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:nutrition_ui/calorie_parameter.dart';
import 'package:nutrition_ui/sleep_parameter.dart';
import 'package:nutrition_ui/water_parameter.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  //bool light = false;
  bool isdark = true;

  ThemeMode _themeMode = ThemeMode.system;

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
      if (_themeMode == ThemeMode.light) {
        isdark = false;
      } else {
        isdark = true;
      }
    });
  }

  Route _waterRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const WaterParameter(),
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

  Route _calorieRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const CalorieParameter(),
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
      pageBuilder: (context, animation, secondaryAnimation) =>
          const SleepParameter(),
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

  @override
  Widget build(BuildContext context) {
    /*return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {*/
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: Scaffold(
        backgroundColor:
            isdark ? const Color(0xFF232322) : const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor:
              isdark ? const Color(0xFF232322) : const Color(0xFFFFFFFF),
          title: const Text(
            "Settings",
            style: TextStyle(fontSize: 25),
          ),
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
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 22),
                  height: 70,
                  decoration: BoxDecoration(
                      color: isdark
                          ? const Color(0xFF323232)
                          : const Color(0xFFFFFFFF),
                      border: Border.all(color: Colors.black12, width: 1.5),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: <Widget>[
                      const Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF3FCC7C),
                            radius: 17,
                            child: Icon(Icons.arrow_forward_ios_outlined),
                          )),
                      const Expanded(
                          flex: 8,
                          child: Text(
                            " Calorie parameters",
                            style: TextStyle(fontSize: 17),
                          )),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(_calorieRoute());
                          },
                          icon: const Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  height: 70,
                  decoration: BoxDecoration(
                      color: isdark
                          ? const Color(0xFF323232)
                          : const Color(0xFFFFFFFF),
                      border: Border.all(color: Colors.black12, width: 1.5),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: <Widget>[
                      const Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            radius: 17,
                            backgroundColor: Color(0xFF3FCC7C),
                            child: Icon(
                              Icons.dark_mode_outlined,
                              color: Colors.white,
                            ),
                          )),
                      const Expanded(
                          flex: 8,
                          child: Text(
                            " Sleep parameters",
                            style: TextStyle(fontSize: 17),
                          )),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(_sleepRoute());
                          },
                          icon: const Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      )
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  height: 70,
                  decoration: BoxDecoration(
                      color: isdark
                          ? const Color(0xFF323232)
                          : const Color(0xFFFFFFFF),
                      border: Border.all(color: Colors.black12, width: 1.5),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: <Widget>[
                      const Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF3FCC7C),
                            radius: 17,
                            child: Icon(
                              Icons.water_drop_outlined,
                              color: Colors.white,
                            ),
                          )),
                      const Expanded(
                        flex: 8,
                        child: Text(
                          " Water parameters",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(_waterRoute());
                          },
                          icon: const Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  height: 70,
                  decoration: BoxDecoration(
                      color: isdark
                          ? const Color(0xFF323232)
                          : const Color(0xFFFFFFFF),
                      border: Border.all(color: Colors.black12, width: 1.5),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF3FCC7C),
                            maxRadius: 17,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )),
                      Expanded(
                          flex: 8,
                          child: Text(
                            " Add meals",
                            style: TextStyle(fontSize: 17),
                          )),
                      Expanded(
                          flex: 1,
                          child: Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  height: 70,
                  decoration: BoxDecoration(
                      color: isdark
                          ? const Color(0xFF323232)
                          : const Color(0xFFFFFFFF),
                      border: Border.all(color: Colors.black12, width: 1.5),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF3FCC7C),
                            radius: 17,
                            child: Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                            ),
                          )),
                      Expanded(
                          flex: 8,
                          child: Text(
                            " Selected recipes",
                            style: TextStyle(fontSize: 17),
                          )),
                      Expanded(
                          flex: 1,
                          child: Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  height: 70,
                  decoration: BoxDecoration(
                      color: isdark
                          ? const Color(0xFF323232)
                          : const Color(0xFFFFFFFF),
                      border: Border.all(color: Colors.black12, width: 1.5),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: <Widget>[
                      const Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF3FCC7C),
                            radius: 17,
                            child: Icon(
                              Icons.light_mode_outlined,
                              color: Colors.white,
                            ),
                          )),
                      const Expanded(
                          flex: 7,
                          child: Text(
                            " Light theme",
                            style: TextStyle(fontSize: 17),
                          )),
                      Expanded(
                          flex: 2,
                          child: Switch(
                              value: isdark,
                              inactiveTrackColor: const Color(0xFF3FCC7C),
                              onChanged: (bool value) {
                                //Icon(Icons.dark_mode_outlined);
                                setState(() {
                                  isdark = value;
                                  isdark
                                      ? changeTheme(ThemeMode.dark)
                                      : changeTheme(ThemeMode.light);

                                  //isdark
                                  //    ? changeTheme(ThemeMode.dark)
                                  //    : changeTheme(ThemeMode.light);
                                });
                              }))
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  height: 70,
                  decoration: BoxDecoration(
                      color: isdark
                          ? const Color(0xFF323232)
                          : const Color(0xFFFFFFFF),
                      border: Border.all(color: Colors.black12, width: 1.5),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF3FCC7C),
                            radius: 17,
                            child: Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                            ),
                          )),
                      Expanded(
                          flex: 8,
                          child: Text(
                            " Notification settings",
                            style: TextStyle(fontSize: 17),
                          )),
                      Expanded(
                          flex: 1,
                          child: Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  height: 70,
                  decoration: BoxDecoration(
                      color: isdark
                          ? const Color(0xFF323232)
                          : const Color(0xFFFFFFFF),
                      border: Border.all(color: Colors.black12, width: 1.5),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF3FCC7C),
                            radius: 17,
                            child: Icon(
                              Icons.error_outline_outlined,
                              color: Colors.white,
                            ),
                          )),
                      Expanded(
                          flex: 8,
                          child: Text(
                            " About",
                            style: TextStyle(fontSize: 17),
                          )),
                      Expanded(
                          flex: 1,
                          child: Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
    //}),
    //);
  }
}

class ModeUse {
  //final Widget tab;
  //final GlobalKey<NavigatorState>? navigatorkey;
  final bool isdark;
  //final String title;
  //final IconData icon;

  ModeUse(
      { //required this.tab,
      //this.navigatorkey,
      //required this.title,
      //required this.icon}
      required this.isdark});
}
