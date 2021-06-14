import 'package:driver_app/screens/navigate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartTrip extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<StartTrip> {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Colors.teal[700];
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Home'),
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
      //  padding: EdgeInsets.only(left: 10.0,right: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children:[


            Container(
              //padding: EdgeInsets.all(30.0),
                child:Card(
                  // color: Colors.cyanAccent,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.black38,width: 2.0)
                  ),
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      Container(
                        padding: EdgeInsets.only(top: 1.0,left: 10,right: 10),
                        child:Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                              Icon(Icons.check_box),  SizedBox(width: 20,),
                              Text('The Enchanted Nightingale',textAlign: TextAlign.left,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500)),
                              SizedBox(width: size.width*0.12,),
                              Text('21456',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w700)),
                            ] ),),
                      Container(
                          padding: EdgeInsets.only(left: size.width*0.2,right: size.width*0.1),//,top: 5,bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Icon(Icons.watch_later_outlined,color: Colors.greenAccent,size: 30.0,),
                                Icon(Icons.pin_drop,color: Colors.greenAccent,size: 30.0,)
                              ])
                      ),

                      Container(
                          padding: EdgeInsets.only(right: size.width*0.52,top: 0.0),
                          child: Icon(Icons.phone,color: Colors.greenAccent,size: 25.0,)
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('Navigate'),
                            onPressed: () {
                               Navigator.push(context,MaterialPageRoute(builder: (context)=>MapScreen()));
                            },
                          ),
                          //const SizedBox(width: 8),
                        ],
                      ),),
                    ],
                  ),
                )),








            Container(
              //padding: EdgeInsets.all(30.0),
                child:Card(
                  // color: Colors.cyanAccent,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.black38,width: 2.0)
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      Container(
                        padding: EdgeInsets.only(top: 1,left: 10,right: 10),
                        child:Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                              Icon(Icons.crop_square),  SizedBox(width: 20,),
                              Text('The Enchanted Nightingale',textAlign: TextAlign.left,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500)),
                              SizedBox(width: size.width*0.12,),
                              Text('21456',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w700)),
                            ] ),),
                      Container(
                          padding: EdgeInsets.only(left: size.width*0.2,right: size.width*0.1),//top: 5,bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Icon(Icons.watch_later_outlined,color: Colors.greenAccent,size: 30.0,),
                                Icon(Icons.pin_drop,color: Colors.greenAccent,size: 30.0,)
                              ])
                      ),

                      Container(
                          padding: EdgeInsets.only(right: size.width*0.52,top: 0.0),
                          child: Icon(Icons.phone,color: Colors.greenAccent,size: 25.0,)
                      ),

                      Container(
                        padding: EdgeInsets.only(right: 10.0),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('Navigate'),
                            onPressed: () {/* ... */
                               Navigator.push(context,MaterialPageRoute(builder: (context)=>MapScreen()));
                              },
                          ),
                          //const SizedBox(width: 8),
                        ],
                      ),),
                    ],
                  ),
                )),











            Container(
           //padding: EdgeInsets.all(30.0),
          child:Card(
            // color: Colors.cyanAccent,
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Colors.black38,width: 2.0)
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                Container(
                  padding: EdgeInsets.only(top: 1.0,left: 10,right: 10),
                child:Row(
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                 Icon(Icons.crop_square),  SizedBox(width: 20,),
                   Text('The Enchanted Nightingale',textAlign: TextAlign.left,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500)),
                   SizedBox(width: size.width*0.12,),
                   Text('21456',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w700)),
               ] ),),
                Container(
                    padding: EdgeInsets.only(left: size.width*0.2,right: size.width*0.1,top: 0,bottom: 0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Icon(Icons.watch_later_outlined,color: Colors.greenAccent,size: 30.0,),
                          Icon(Icons.pin_drop,color: Colors.greenAccent,size: 30.0,)
                        ])
                ),

                Container(
                    padding: EdgeInsets.only(right:size.width*0.52,top: 0.0),
                    child: Icon(Icons.phone,color: Colors.greenAccent,size: 25.0,)
                ),
                Container(
                  padding: EdgeInsets.only(right: 10.0),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('Navigate'),
                      onPressed: () {/* ... */
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>MapScreen()));
                        },
                    ),
                    //const SizedBox(width: 8),
                  ],
                ),),
              ],
            ),
          ))









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
    //  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
          splashColor: Colors.teal[700],
          onTap: onTap,
          child: Container(
            height: 55.0,
            child: Row(
             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                     // padding: const EdgeInsets.all(8.0),
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
