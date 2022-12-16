import 'package:exercise_app/routes.dart';
import 'package:exercise_app/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var len = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: len.height * 0.35,
            color: Color.fromARGB(255, 3, 33, 72),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: EdgeInsets.only(top: 45, left: 15),
                      child: GestureDetector(
                        child: Icon(
                          Icons.west_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 45, left: len.width * 0.3),
                      child: Text(
                        "Profile",
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          fontFamily: GoogleFonts.lato().fontFamily,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(32),
                  child: Icon(
                    Icons.person_rounded,
                    color: Colors.white,
                    size: 150,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, top: 30, right: 30),
            child: Container(
              width: len.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 15),
                    child: Text(
                      "Username",
                      style: TextStyle(
                        color: Color.fromARGB(255, 154, 154, 154),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      signup_name,
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25, bottom: 15),
                    child: Text(
                      "Email",
                      style: TextStyle(
                        color: Color.fromARGB(255, 154, 154, 154),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      email,
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25, bottom: 15),
                    child: Text(
                      "Phone",
                      style: TextStyle(
                        color: Color.fromARGB(255, 154, 154, 154),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      phoneNumber,
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25, bottom: 15),
                    child: Text(
                      "Date of Birth",
                      style: TextStyle(
                        color: Color.fromARGB(255, 154, 154, 154),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      DOB,
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
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
