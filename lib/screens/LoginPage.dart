import 'package:driver_app/screens/dashboard.dart';
import 'package:driver_app/screens/forgotPassword.dart';
import 'package:flutter/material.dart';

import 'signup.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child:Column(
             // child: Stack(
                children: <Widget>[
                  SizedBox(height: size.height*0.1,),
                  Center(
                  child:Container(
                    height:size.height*0.25,
                    width: size.width*0.5,
                      child: Image.asset("assets/logo.jpg",fit: BoxFit.fill,),
                    ),
                  )
                  
                  
                  //Container(
                    //padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                    //child: Text('Hello',
                      //  style: TextStyle(
                        //    fontSize: 80.0, fontWeight: FontWeight.bold)),
                  //),
                 // Container(
                   // padding: EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                   // child: Text('There',
                     //   style: TextStyle(
                       //     fontSize: 80.0, fontWeight: FontWeight.bold)),
                 // ),
                  //Container(
                    //padding: EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                   // child: Text('.',
                     //   style: TextStyle(
                       //     fontSize: 80.0,
                         //   fontWeight: FontWeight.bold,
                           // color: Colors.green)),
                 // )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[



                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                      obscureText: true,
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 15.0, left: 20.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>forgotPassword()));
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.lightGreen[400],
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.07),
                    Container(
                      height: 40.0,
                     width: size.width*0.8,
                     child: RaisedButton(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                       color: Colors.lightGreen[500],
                       child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                       onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavScreen())),
                     ),
                     // child: Material(
                       // borderRadius: BorderRadius.circular(20.0),
                        //shadowColor: Colors.greenAccent,
                        //color: Colors.lightGreen[500],
                        //elevation: 7.0,
                        //child: GestureDetector(
                          //onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavScreen()));
                           // BottomNavScreen();
                         // },
                         // child: Center(
                           // child: Text(
                             // 'LOGIN',
                              //style: TextStyle(
                                //  color: Colors.white,
                                 // fontWeight: FontWeight.bold,
                                  //fontFamily: 'Montserrat'),
                         //   ),
                          //),
                        //),
                      //),
                    ),
                    SizedBox(height: 10.0),
                  ],
                )),
            SizedBox(height: 5.0),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //SizedBox(width:size.width*0.4,),
                Text(
                  'New to Spotify ?',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 5.0),
               FlatButton(
                   child: Text("Sign up",
                       style: TextStyle(
                           color: Colors.lightGreen[500],
                           fontFamily: 'Montserrat',
                           fontWeight: FontWeight.bold,
                           decoration: TextDecoration.underline)),
                  onPressed: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context)=>SignupPage()));}
                       )
               // InkWell(
                 // onTap: () {
                   // Navigator.push(context,MaterialPageRoute(builder: (context)=>SignupPage()));
                  //},
                 // child: Text(
                   // 'Register',
                   // style: TextStyle(
                     //   color: Colors.green,
                       // fontFamily: 'Montserrat',
                        //fontWeight: FontWeight.bold,
                        //decoration: TextDecoration.underline),
                  //),
                //)
              ],
            )
          ],
        ));
  }
}
