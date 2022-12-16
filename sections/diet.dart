import 'package:exercise_app/login.dart';
import 'package:exercise_app/sections/savedDietPlan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routes.dart';

String Breakfast = "";
String AmSnack = "";
String Lunch = "";
String PmSnack = "";
String Dinner = "";

class DietPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 238, 234, 234),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 80, left: 15),
                    child: GestureDetector(
                      child: Icon(
                        Icons.west_rounded,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 30,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80, right: 20),
                    child: GestureDetector(
                      child: Icon(
                        Icons.person_rounded,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 45,
                      ),
                      onTap: () =>
                          Navigator.pushNamed(context, MyRoutes.homeRoute),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 32, left: 30),
                  child: Text(
                    "Hi  " + name + " !",
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 25, left: 30),
                  child: Text(
                    "Design your meal plan \nto help reach your fitness goals",
                    style: TextStyle(
                      color: Color.fromARGB(255, 124, 124, 124),
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 25, left: 30),
                      child: Text(
                        "Today",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25, right: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 63, 119, 164),
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, MyRoutes.saveddietRoute),
                      child: Text("Today's Plan"),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 30, right: 30),
                    child: Card(
                      elevation: 4.0,
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, left: 0),
                                    child: Text(
                                      "Breakfast",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 78, 208, 74),
                                        fontFamily:
                                            GoogleFonts.poppins().fontFamily,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 50,
                                      right: 50,
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter food item",
                                        labelText: "Food",
                                      ),
                                      onChanged: (value) {
                                        Breakfast = value;
                                      },
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
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 30, right: 30),
                    child: Card(
                      elevation: 4.0,
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, left: 0),
                                    child: Text(
                                      "A.M. Snack",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 33, 40, 172),
                                        fontFamily:
                                            GoogleFonts.poppins().fontFamily,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 50,
                                      right: 50,
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter food item",
                                        labelText: "Food",
                                      ),
                                      onChanged: (value) {
                                        AmSnack = value;
                                      },
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
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 30, right: 30),
                    child: Card(
                      elevation: 4.0,
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, left: 0),
                                    child: Text(
                                      "Lunch",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontFamily:
                                            GoogleFonts.poppins().fontFamily,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 50,
                                      right: 50,
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter food item",
                                        labelText: "Food",
                                      ),
                                      onChanged: (value) {
                                        Lunch = value;
                                      },
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
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 30, right: 30),
                    child: Card(
                      elevation: 4.0,
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, left: 0),
                                    child: Text(
                                      "P.M. Snack",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 218, 186, 45),
                                        fontFamily:
                                            GoogleFonts.poppins().fontFamily,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 50,
                                      right: 50,
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter food item",
                                        labelText: "Food",
                                      ),
                                      onChanged: (value) {
                                        PmSnack = value;
                                      },
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
                  Padding(
                    padding: EdgeInsets.only(
                        top: 25, left: 30, right: 30, bottom: 45),
                    child: Card(
                      elevation: 4.0,
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, left: 0),
                                    child: Text(
                                      "Dinner",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 78, 208, 74),
                                        fontFamily:
                                            GoogleFonts.poppins().fontFamily,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 50,
                                      right: 50,
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter food item",
                                        labelText: "Food",
                                      ),
                                      onChanged: (value) {
                                        Dinner = value;
                                      },
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
