import 'package:driver_app/screens/tripcost.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TripLog extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TripLog> {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Colors.teal[700];
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Log Book'),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
                SizedBox(height: 10.0,),
           // Stack(
             // children: <Widget>[
               // Padding(
                 // padding: EdgeInsets.only(top: 10.0, right: 15.0, left: 15.0),
                 // child: Container(
                   // width: double.infinity,
                   // height: 500.0,
                    //decoration: BoxDecoration(
                      //  color: Colors.white,
                       // borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        //boxShadow: [
                          //BoxShadow(
                            //  color: Colors.white.withOpacity(0.9),
                             // offset: Offset(0.0, 3.0),
                             // blurRadius: 15.0)
                        //]),
                   // child:
                       Column(
                      children: <Widget>[
                       // SizedBox(height: 18.0),

                        //Padding(
                          //padding: EdgeInsets.symmetric(
                           // horizontal: 40.0,
                          //),
                         // child: Container(
                           // decoration: BoxDecoration(boxShadow: [
                             // BoxShadow(
                               //   color: Colors.black.withOpacity(0.1),
                                 // offset: Offset(0.0, 3.0),
                                 // blurRadius: 15.0)
                            //]),
                           // child:
                             Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                               // Text(
                                 // 'No Data available',
                                  //style: TextStyle(
                                    //  fontSize: 17.0, color: Colors.black),
                               // ),





                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:[
                                      Card(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                                        elevation: 5.0,
                                      //  color: Colors.cyanAccent,
                                        child: Container(
                                          height: 120.0,
                                          width: size.width*0.45,
                                          child: InkWell(
                                              child: Container(
                                                  padding: EdgeInsets.only(left: 5.0,right: 5.0),
                                                  child:Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            Text('TripID',
                                                              style: TextStyle(fontSize: 20, color: Colors.green),
                                                            ),
                                                            Text('Company',
                                                              style: TextStyle(fontSize: 20, color: Colors.green),
                                                            ),

                                                          ]
                                                      ),




                                                      Row(
                                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            SizedBox(width: 7.0,),
                                                            Icon(Icons.watch_later_outlined,color: Colors.green,),
                                                            SizedBox(width: size.width*0.2,),
                                                            Icon(Icons.person_add_alt_1_rounded,color: Colors.green,),
                                                          ]
                                                      ),

                                                      Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            Text('07:00 am',
                                                              style: TextStyle(fontSize: 15, color: Colors.green),
                                                            ),
                                                            Text('07:30 am',
                                                              style: TextStyle(fontSize: 15, color: Colors.green),
                                                            ),

                                                          ]
                                                      ),



                                                      //Row(
                                                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                         // children:[
                                                           // Text('07:01 am',
                                                             // style: TextStyle(fontSize: 20, color: Colors.red),
                                                            //),
                                                            //Text('07:33 am',
                                                              //style: TextStyle(fontSize: 20, color: Colors.red),
                                                            //),

                                                        //  ]
                                                      //),
                                                    ],
                                                  )
                                              ),
                                              onTap: () {
                                                Navigator.push(context,MaterialPageRoute(builder: (context)=>tripcost()));

                                              }
                                          ),
                                        ),
                                      ),
                                      Card(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                                        elevation: 5.0,
                                       // color: Colors.cyanAccent,
                                        child: Container(
                                          height: 120.0,
                                          width: size.width*0.45,
                                          child: InkWell(
                                              child: Container(
                                                  padding: EdgeInsets.only(left: 5.0,right: 5.0),
                                                  child:Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            Text('TripID',
                                                              style: TextStyle(fontSize: 20, color: Colors.green),
                                                            ),
                                                            Text('Company',
                                                              style: TextStyle(fontSize: 20, color: Colors.green),
                                                            ),

                                                          ]
                                                      ),


                                                      Row(
                                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            SizedBox(width: 7.0,),
                                                            Icon(Icons.watch_later_outlined,color: Colors.green,),
                                                            SizedBox(width: size.width*0.2,),
                                                            Icon(Icons.person_add_alt_1_rounded,color: Colors.green,),
                                                          ]
                                                      ),

                                                      Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            Text('07:00 am',
                                                              style: TextStyle(fontSize: 15, color: Colors.green),
                                                            ),
                                                            Text('07:30 am',
                                                              style: TextStyle(fontSize: 15, color: Colors.green),
                                                            ),

                                                          ]
                                                      ),



                                                    //  Row(
                                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        //  children:[
                                                          //  Text('07:01 am',
                                                            //  style: TextStyle(fontSize: 20, color: Colors.red),
                                                           // ),
                                                            //Text('07:33 am',
                                                             // style: TextStyle(fontSize: 20, color: Colors.red),
                                                            //),

                                                          //]
                                                      //),






                                                    ],
                                                  )
                                              ),
                                              onTap: () {
                                                Navigator.push(context,MaterialPageRoute(builder: (context)=>tripcost()));
                                              }
                                          ),
                                        ),
                                      ),
                                    ]),



                             SizedBox(height: 8.0,),


                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:[
                                      Card(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                                        elevation: 5.0,
                                       // color: Colors.cyanAccent,
                                        child: Container(
                                          height: 120.0,
                                          width: size.width*0.45,
                                          child: InkWell(
                                              child: Container(
                                                padding: EdgeInsets.only(left: 5.0,right: 5.0),
                                                  child:Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            Text('TripID',
                                                              style: TextStyle(fontSize: 20, color: Colors.green),
                                                            ),
                                                            Text('Company',
                                                              style: TextStyle(fontSize: 20, color: Colors.green),
                                                            ),

                                                          ]
                                                      ),




                                                      Row(
                                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            SizedBox(width: 7.0,),
                                                            Icon(Icons.watch_later_outlined,color: Colors.green,),
                                                            SizedBox(width:size.width*0.2,),
                                                            Icon(Icons.person_add_alt_1_rounded,color: Colors.green,),
                                                          ]
                                                      ),

                                                      Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            Text('07:00 am',
                                                              style: TextStyle(fontSize: 15, color: Colors.green),
                                                            ),
                                                            Text('07:30 am',
                                                              style: TextStyle(fontSize: 15, color: Colors.green),
                                                            ),

                                                          ]
                                                      ),



                                                     // Row(
                                                       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                         // children:[
                                                           // Text('07:01 am',
                                                            //  style: TextStyle(fontSize: 20, color: Colors.red),
                                                            //),
                                                            //Text('07:33 am',
                                                              //style: TextStyle(fontSize: 20, color: Colors.red),
                                                            //),

                                                         // ]
                                                      //),





                                                    ],
                                                  )
                                              ),
                                              onTap: () {
                                              Navigator.push(context,MaterialPageRoute(builder: (context)=>tripcost()));

                                              }
                                          ),
                                        ),
                                      ),
                                      Card(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                                        elevation: 5.0,
                                        //color: Colors.cyanAccent,
                                        child: Container(
                                          height: 120.0,
                                          width:size.width*0.45,
                                          child: InkWell(
                                              child: Container(
                                                 padding: EdgeInsets.only(left: 5.0,right: 5.0),
                                                  child:Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            Text('TripID',
                                                              style: TextStyle(fontSize: 20, color: Colors.green),
                                                            ),
                                                            Text('Company',
                                                              style: TextStyle(fontSize: 20, color: Colors.green),
                                                            ),

                                                          ]
                                                      ),


                                                      Row(
                                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            SizedBox(width: 7.0,),
                                                            Icon(Icons.watch_later_outlined,color: Colors.green,),
                                                            SizedBox(width: size.width*0.2,),
                                                            Icon(Icons.person_add_alt_1_rounded,color: Colors.green,),
                                                          ]
                                                      ),

                                                      Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children:[
                                                            Text('07:00 am',
                                                              style: TextStyle(fontSize: 15, color: Colors.green),
                                                            ),
                                                            Text('07:30 am',
                                                              style: TextStyle(fontSize: 15, color: Colors.green),
                                                            ),

                                                          ]
                                                      ),



                                                    //  Row(
                                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        //  children:[
                                                          //  Text('07:01 am',
                                                            //  style: TextStyle(fontSize: 20, color: Colors.red),
                                                            //),
                                                            //Text('07:33 am',
                                                              //style: TextStyle(fontSize: 20, color: Colors.red),
                                                            //),

                                                        //  ]
                                                      //),
                                                    ],
                                                  )
                                              ),
                                              onTap: () {
                                                Navigator.push(context,MaterialPageRoute(builder: (context)=>tripcost()));

                                              }
                                          ),
                                        ),
                                      ),
                                    ]),





















                              ],
                            ),
                        //  ),
                       // ),

                      ],
                    ),
                 // ),
               // ),
              ],
            ),
        //  ],
        ),
     // ),
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
