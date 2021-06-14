import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:driver_app/screens/login.dart';


class MyHomePage extends StatelessWidget {









  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/back1.png'), fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: height * .15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'Welcome!',
                    style: TextStyle(
                        fontSize: 45,
                        fontFamily: 'font1',
                        color: Color(0xFFFE7550)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'Nice to see you again!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),

              SizedBox(
                height: height * .6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 35,
                  ),
                  Flexible(child: AnimatedButton(
                      enabled: true,
                      height: 50,
                      width: 400,
                      color: Color(0xFFFE7550),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginscreen()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      )))
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}