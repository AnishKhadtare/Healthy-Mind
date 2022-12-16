// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:exercise_app/profile.dart';
import 'package:exercise_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'signup.dart';
import 'sections/diet.dart';

class HomeApp extends StatefulWidget {
  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.91,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 253, 203, 198),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.08, left: size.width * 0.05),
                  child: Text(
                    "Good Morning",
                    textScaleFactor: 1.1,
                    style: TextStyle(
                      fontFamily: GoogleFonts.balooBhaijaan().fontFamily,
                      fontSize: 28,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0, left: size.width * 0.05),
                  child: Text(
                    name,
                    textScaleFactor: 1.1,
                    style: TextStyle(
                      fontFamily: GoogleFonts.balooBhaijaan().fontFamily,
                      fontSize: 28,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.025, left: size.width * 0.05),
                  child: Container(
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: size.width * 0.01,
                        left: size.width * 0.05,
                        bottom: size.width * 0.01,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: "Search",
                        ),
                        autocorrect: true,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                    child: GridView.count(
                      childAspectRatio: 0.85,
                      crossAxisCount: 2,
                      crossAxisSpacing: 32,
                      mainAxisSpacing: 32,
                      children: <Widget>[
                        Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(32),
                                child: Image.network(
                                  "https://cdn-icons-png.flaticon.com/512/3048/3048398.png",
                                  height: size.height * 0.08,
                                ),
                              ),
                              Text(
                                "Meditation",
                                style: TextStyle(
                                  fontFamily:
                                      GoogleFonts.balooBhai().fontFamily,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(32),
                                child: Image.network(
                                  "https://cdn-icons-png.flaticon.com/512/3574/3574756.png",
                                  height: size.height * 0.08,
                                ),
                              ),
                              Text(
                                "Yoga",
                                style: TextStyle(
                                  fontFamily:
                                      GoogleFonts.balooBhai().fontFamily,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            // ignore: sort_child_properties_last
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(32),
                                  child: Image.network(
                                    "https://cdn-icons-png.flaticon.com/512/6774/6774898.png",
                                    height: size.height * 0.08,
                                  ),
                                ),
                                Text(
                                  "Diet",
                                  style: TextStyle(
                                    fontFamily:
                                        GoogleFonts.balooBhai().fontFamily,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, MyRoutes.dietRoute);
                          },
                        ),
                        Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(32),
                                child: Image.network(
                                  "https://cdn-icons-png.flaticon.com/512/2000/2000047.png",
                                  height: size.height * 0.08,
                                ),
                              ),
                              Text(
                                "Exercises",
                                style: TextStyle(
                                  fontFamily:
                                      GoogleFonts.balooBhai().fontFamily,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 90, 56, 56),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  GestureDetector(
                      child: Icon(
                        Icons.account_circle,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 35,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.profileRoute);
                      }),
                  GestureDetector(
                    child: Icon(
                      Icons.home_filled,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 35,
                    ),
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.logout,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 35,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.loginRoute);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
