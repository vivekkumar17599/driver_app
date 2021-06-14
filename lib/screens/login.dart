import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:driver_app/screens/dashboard.dart';
import 'package:driver_app/screens/profile.dart';
class Loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/back2.png'))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: height * .4,
              ),

              customtextfield(
                hint: 'Enter your mobile',
                issecured: false,
              ),
              customtextfield(
                hint: 'Enter your password',
                issecured: true,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  AnimatedButton(
                      enabled: true,
                      height: 50,
                      width: 230,
                      color: Color(0xFFFE7550),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => BottomNavScreen()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      )),

                ],
              ),
              SizedBox(

                height: height * .15,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class customtextfield extends StatelessWidget {
  bool issecured;
  String hint;

  customtextfield({this.hint, this.issecured});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        obscureText: issecured,
        decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: Colors.black12,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.transparent)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.transparent)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.transparent)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.transparent))),
        style: TextStyle(
            color: Colors.black.withOpacity(.6),
            fontWeight: FontWeight.w600,
            fontSize: 23),
      ),
    );
  }
}