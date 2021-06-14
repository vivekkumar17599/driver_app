import 'package:animated_button/animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'login.dart';

class changePassword extends StatefulWidget {
  @override
  _changePasswordState createState() => _changePasswordState();
}

class _changePasswordState extends State<changePassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:SingleChildScrollView(
       child: Container(
          padding: EdgeInsets.only(top: 40.0,left: 10.0,right: 10.0),
       child: Column(
          children: [

            Container(
              child:Icon(Icons.lock_outlined,size: 80,),
            ),
            SizedBox(height: 10,),
         Text("Change Password",style: TextStyle(fontSize: 40),),

            SizedBox(height: 30,),
            Align(
              alignment: Alignment.centerLeft,
            child:Text("Enter current password :",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400),),
            ),

            customtextfield(
             // hint: 'Enter your password',
              issecured: true,
             // labelText: "Enter old password :",
            ),

            SizedBox(height: 5,),

            Align(
              alignment: Alignment.centerLeft,
              child:Text("Enter new password :",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400),),
            ),
            customtextfield(
             // hint: 'Enter your password',
              issecured: true,
            ),

         SizedBox(height: 5,),
            Align(
              alignment: Alignment.centerLeft,
              child:Text("Confirm password :",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400),),
            ),
            customtextfield(
              // hint: 'Enter your password',
              issecured: true,
            ),

         SizedBox(height: 15.0,),

            AnimatedButton(
                enabled: true,
                height: 50,
                width: size.width*0.87,
                color: Colors.blueAccent,
                onPressed: () {
                },
                child: Text(
                  'Change password',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                )),


          ],
        ),
      ),
      )
      )
    );
  }
}




class customtextfield extends  StatelessWidget {
  bool issecured;
  String hint;
  String labelText;
  customtextfield({this.hint, this.issecured,this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child:Container(
        height: 50.0,
      child:TextField(
        obscureText: issecured,
        decoration: InputDecoration(
            labelText: labelText,
            hintText: hint,
            filled: true,
            fillColor: Colors.black12,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.transparent)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.transparent)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.transparent)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.transparent))),
        style: TextStyle(
            color: Colors.black.withOpacity(.6),
            fontWeight: FontWeight.w600,
            fontSize: 23),
      ),
      )
    );
  }
}