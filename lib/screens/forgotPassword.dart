import 'package:animated_button/animated_button.dart';
import 'package:driver_app/screens/dashboard.dart';
import 'package:driver_app/screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forgotPassword extends StatefulWidget {
  @override
  _forgotPasswordState createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
     // resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: false,
        key: scaffoldkey,
      appBar: AppBar(
        title: Text("Forgot password",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w800)

        ),
        backgroundColor: Colors.white,
      ),
      body:SingleChildScrollView(
        //reverse: true,
     child:
     Container(
        height: size.height,
       // color: Colors.black38,
        width: size.width*0.96,
        padding: EdgeInsets.only(left: 30,right: 10.0,top: size.height*0.1),
        child:Column(
        children:[
          Text("Enter your phone number or E-mail ",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
          SizedBox(height: 20.0,),
          Text("We will send you verification code"),
          SizedBox(height: 56,),


          Card(
          elevation: 5.0,
          child:Container(
              padding: EdgeInsets.only(//top: 20,
                  left: 20.0,right: 20.0),
                 height: size.height*0.35,
        child: Column(

          children: [


            SizedBox(height: size.height*0.03),
            SingleChildScrollView(
              reverse: true,
           child:Padding(
             padding: EdgeInsets.only(bottom: 10.0),
           child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                  labelText: 'Type your phone or E-mail',
                  labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))),
            ),),),
            SizedBox(height: size.height*0.1),
            SingleChildScrollView(
           child: Container(
                height: 40.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                 // borderRadius: BorderRadius.circular(20.0),
                 // shadowColor: Colors.greenAccent,
                  color: Colors.lightGreen[500],
                  elevation: 7.0,
                 // child: GestureDetector(
                    onPressed: ()  {

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
                          BottomNavScreen()));
                      }
                      )
                     ),


                      ],),
                      ]))));
                    },
                    child: Center(
                      child: Text(
                        'Request OTP',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ),
                )),
//SizedBox(height: 30.0,)
            ],
        ),
      ),)]))
    )
    );
  }
}
