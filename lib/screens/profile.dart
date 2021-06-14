import 'package:driver_app/screens/changePassword.dart';
import 'package:driver_app/screens/tripdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:driver_app/screens/edit_profile.dart';
class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    String name = "The Enchanted Nightingale";

    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: size.width*0.05, top: 15,),
        child: ListView(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              ],
            ),
             SizedBox(height: 20,),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => EditProfilePage()));
                  },
                  child: Text(
                    "Profile",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              //height: 10,
            ),


            Container(
              padding: EdgeInsets.only(right: 10),
              height: 33.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                child: Text("Change password",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400),),
                    onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>changePassword()));
                    }, ),
                Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),),

      Container(
        padding: EdgeInsets.only(right: 10),
        height: 33.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                  child: Text("Log Book",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400),),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TripDetails()));
                  }, ),
                Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),),

           Container(
             height: 33.0,
           padding: EdgeInsets.only(right: 10),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                  child: Text("Language",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400),),
                  onPressed: (){}, ),
                Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),),

            Container(
              padding: EdgeInsets.only(right: 10),
              height: 33.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                  child: Text("Privacy and security",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400),),
                  onPressed: (){}, ),
                Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),),





            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.volume_up_outlined,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow("New for you", true),
            buildNotificationOptionRow("Account activity", true),
            buildNotificationOptionRow("Opportunity", false),
            SizedBox(
              height: 50,
            ),
            Center(
              child: OutlineButton(
                padding: EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Text("SIGN OUT",
                    style: TextStyle(
                        fontSize: 16, letterSpacing: 2.2, color: Colors.black)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }


}