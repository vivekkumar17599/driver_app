import 'package:animated_button/animated_button.dart';
import 'package:driver_app/screens/dashboard.dart';
import 'package:driver_app/screens/uploadPDF.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
      key: scaffoldkey,
        resizeToAvoidBottomPadding: false,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 40.0, 0.0, 0.0),
                  child: Text(
                    'Signup',
                    style:
                    TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(260.0, 55.0,
                      0.0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(//top: 35.0,
                  left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[

                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),

                  SizedBox(height:10.0,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'PASSWORD ',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                    obscureText: true,
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Confirm password ',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  SizedBox(height: size.height*0.1),
                 // Container(
                   //   height: 40.0,
                     // child: Material(
                       // borderRadius: BorderRadius.circular(20.0),
                       // shadowColor: Colors.greenAccent,
                       // color: Colors.green,
                        //elevation: 7.0,
                        //child: GestureDetector(
                          //onTap: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavScreen()));
                          //},
                          //child: Center(
                            //child: Text(
                              //'SIGNUP',
                              //style: TextStyle(
                                //  color: Colors.white,
                                  //fontWeight: FontWeight.bold,
                                  //fontFamily: 'Montserrat'),
                            //),
                          //),
                        //),
                      //)






                  Container(
                    height: 40.0,
                    width: size.width*0.9,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                      color: Colors.lightGreen[500],
                      child: Text("Sign up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                      onPressed: () {//=>Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavScreen())),







                        scaffoldkey.currentState.showBottomSheet((context) =>
                            SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                // padding: EdgeInsets.all(5.0),

                                child:Container(
                                    padding: EdgeInsets.only(
                                      //left: 4.0,
                                        right: 4.0, top: 10.0),
                                    height: size.height,
                                    width: double.infinity,
                                    child: ListView(
                                        padding: EdgeInsets.only(left: 5.0,
                                          right: 5.0,
                                          // bottom: 20.0,
                                          //top: size.height * 0.3
                                        ),
                                        shrinkWrap: true,
                                        children: [
                                          SizedBox(height: size.height*0.27,),
                                          Text("_ _ _ _", textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 90.0),),

                                          SizedBox(height: 70.0,),
                                          Row(children: [
                                            SizedBox(width: size.width*0.2,),

                                            Container(
                                                padding: EdgeInsets.only(left: 50.0),
                                                child: AnimatedButton(
                                                    child: Text("Verify",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20.0),),
                                                    enabled: true,
                                                    height: 50,
                                                    width: size.width*0.58,
                                                    //shadowColor: Colors.greenAccent,
                                                    color: Colors.lightGreen[500],
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  uploadPDF()));
                                                    }
                                                )
                                            ),


                                          ],),
                                        ]))));
                      },









                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child:

                        Center(
                          child: Text('Go Back',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat')),
                        ),


                      ),
                    ),
                  ),
                ],
              )),
          // SizedBox(height: 15.0),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text(
          //       'New to Spotify?',
          //       style: TextStyle(
          //         fontFamily: 'Montserrat',
          //       ),
          //     ),
          //     SizedBox(width: 5.0),
          //     InkWell(
          //       child: Text('Register',
          //           style: TextStyle(
          //               color: Colors.green,
          //               fontFamily: 'Montserrat',
          //               fontWeight: FontWeight.bold,
          //               decoration: TextDecoration.underline)),
          //     )
          //   ],
          // )
        ]));
  }
}
