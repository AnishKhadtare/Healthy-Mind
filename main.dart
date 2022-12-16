// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:exercise_app/profile.dart';
import 'package:exercise_app/sections/diet.dart';
import 'package:exercise_app/sections/savedDietPlan.dart';

import 'package:exercise_app/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';
import 'routes.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.dietRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomeApp(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.profileRoute: (context) => Profile(),
        MyRoutes.signUpRoute: (context) => SignUp(),
        MyRoutes.dietRoute: (context) => DietPage(),
        MyRoutes.saveddietRoute: (context) => SavedDietPage(),
      },
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}
