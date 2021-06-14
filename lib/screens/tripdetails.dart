import 'package:driver_app/screens/starttrip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
class TripDetails extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TripDetails> {


  File _image;
  final picker = ImagePicker();

  Future getImage() async{
    final pickerImage = await picker.getImage(source: ImageSource.camera,preferredCameraDevice: CameraDevice.front);
    setState(() {

      if(pickerImage!=null){
        _image = File(pickerImage.path);
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StartTrip(),
            ));
      }
      else{
        print("no image selected");
     }
    });
  }



  @override
  Widget build(BuildContext context) {
    Color primaryColor = Colors.teal[700];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Ride Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            tooltip: 'Next page',
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.teal[700],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 3.0,right: 3.0,top: 3.0,bottom: 3.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        //  mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            SizedBox(height: 5.0,),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black38,width: 3.0),
                 borderRadius: BorderRadius.circular(20.0,),
              ),
              elevation: 10.0,
              child:Container(
                width: double.infinity,
                 height: 85.0,
                 padding: EdgeInsets.only(left:20.0,right: 20.0,top: 1.0,bottom: 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                  child:Text("21456",textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700,color: Colors.black),),),
                 Align(
                   alignment: Alignment.center,
                  child:Text("The Enchanted Nightingale",
                    style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,color: Colors.black),),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                  Icon(Icons.watch_later_outlined,color: Colors.greenAccent,size: 30.0,),
                      Icon(Icons.pin_drop,color: Colors.greenAccent,size: 30.0,)

                      ]),
                ],
              ),
            ),),




          //  Card(
            //  child: Column(
              //  mainAxisSize: MainAxisSize.min,
                //children: <Widget>[
                  //const ListTile(
                    //title: Text('The Enchanted Nightingale'),
                    //subtitle:
                    //    Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                 // ),
                //],
              //),
           // ),

            //SizedBox(height: 3.0),


            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black38,width: 3.0),
                borderRadius: BorderRadius.circular(20.0,),
              ),
              elevation: 10.0,
              child:Container(
                width: double.infinity,
                height: 85.0,
                padding: EdgeInsets.only(left:20.0,top: 1.0,right: 20.0,bottom: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      child:Text("21456",textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700,color: Colors.black),),),
                    Align(
                      //alignment: Alignment.center,
                      child:Text("The Enchanted Nightingale",
                        style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,color: Colors.black),),),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Icon(Icons.watch_later_outlined,color: Colors.greenAccent,size: 30.0,),
                          Icon(Icons.pin_drop,color: Colors.greenAccent,size: 30.0,)

                        ]),
                  ],
                ),
              ),),





            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black38,width: 3.0),
                borderRadius: BorderRadius.circular(20.0,),
              ),
              elevation: 10.0,
              child:Container(
                width: double.infinity,
                height: 85.0,
                padding: EdgeInsets.only(left:20.0,top: 1.0,right: 20.0,bottom: 2.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      child:Text("21456",textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700,color: Colors.black),),),
                    Align(
                      //alignment: Alignment.center,
                      child:Text("The Enchanted Nightingale",
                        style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,color: Colors.black),),),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Icon(Icons.watch_later_outlined,color: Colors.greenAccent,size: 30.0,),
                          Icon(Icons.pin_drop,color: Colors.greenAccent,size: 30.0,)

                        ]),
                  ],
                ),
              ),),








            //  Card(
   // shape: RoundedRectangleBorder(
   // side: BorderSide(color: Colors.black38,width: 3.0),
   // borderRadius: BorderRadius.circular(20.0,),
    //),
    //elevation: 10.0,
    //child:Container(
    //width: double.infinity,
    //height: 110.0,
    //child: Row(
    //children: <Widget>[
    //Column(
    //children:[
      //Container(
        // padding:EdgeInsets.only(top: 15.0,left: 10.0),
       //child: Icon(Icons.account_circle,size: 70,color: Colors.greenAccent,),),
    //]),

      //Column(
        //children:[
          //Container(
            //padding: EdgeInsets.only(top: 15,left: 230),
     //child: Text("21456",textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700,color: Colors.black),),
       //   ),

     // SizedBox(height: 10,),
      //Container(
     //child: Row(
       //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         // children:[
           // Icon(Icons.watch_later_outlined,color: Colors.greenAccent,size: 30.0,),
            //SizedBox(width: 220,),
            //Icon(Icons.pin_drop,color: Colors.greenAccent,size: 30.0,)

          //]),),
//])
//]))),



    SizedBox(height: 80.0),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  // width: double.infinity,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                          child: Text('Cancel Ride',
                              style: TextStyle(fontSize: 24)),
                          onPressed: () => {
                            // showDialog(
                            //     context: context,
                            //     builder: (BuildContext context) => leadDialog)
                          },
                          color: Colors.green,
                          textColor: Colors.white,
                        ),
                        FlatButton(
                          child: Text('Start Ride',
                              style: TextStyle(fontSize: 24)),
                         //  onPressed:() {
                           //  getImage().whenComplete(() =>
                             //    Navigator.push(
                               //      context,
                                 //    MaterialPageRoute(
                                   //    builder: (context) => StartTrip(),
                                    // )));
                           //},



                          onPressed:() {
                            getImage();

                          },




                          color: Colors.green,
                          textColor: Colors.white,
                        )
                      ])),
            ),
          ],
        ),
      ),

      );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 390.0 - 200);
    path.quadraticBezierTo(size.width / 2, 280, size.width, 390.0 - 200);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class UpcomingCard extends StatelessWidget {
  final String title;
  final double value;
  final Color color;

  UpcomingCard({this.title, this.value, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        width: 120.0,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(25.0))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(height: 30.0),
              Text('$value',
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
          splashColor: Colors.teal[700],
          onTap: onTap,
          child: Container(
            height: 55.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
