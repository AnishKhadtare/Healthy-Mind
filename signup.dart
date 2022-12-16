import 'package:exercise_app/main.dart';
import 'package:exercise_app/routes.dart';
import 'package:flutter/material.dart';

String signup_name = "";
String password = "";
String confPassword = "";
String email = "";
String phoneNumber = "";
String DOB = "";

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (password != confPassword) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text(
            "Incorrect Password",
            style: TextStyle(color: Colors.red),
          ),
          content: const Text("Please enter the correct password!!"),
        ),
      );
    } else if (phoneNumber.length != 10) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text(
            "Incorrect number",
            style: TextStyle(color: Colors.red),
          ),
          content: const Text("Please enter the correct number!!"),
        ),
      );
    } else if (!email.contains('@')) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text(
            "Incorrect Email",
            style: TextStyle(color: Colors.red),
          ),
          content: const Text("Please enter the correct email!!"),
        ),
      );
    } else {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.loginRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      /*SingleChildScrollView is used to make the app scrollable to avoid overflow errors*/
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                /* .all ---> For same padding from all directions*/
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        signup_name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                      onChanged: (value) {
                        password = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Confirm password",
                        labelText: "Confirmed Password",
                      ),
                      onChanged: (value) {
                        confPassword = value;
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Enter email",
                        labelText: "Email",
                      ),
                      onChanged: (value) {
                        email = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter mobile No",
                        labelText: "Mobile Number",
                      ),
                      onChanged: (value) {
                        phoneNumber = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        hintText: "Enter date of birth",
                        labelText: "Date Of Birth",
                      ),
                      onChanged: (value) {
                        DOB = value;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
