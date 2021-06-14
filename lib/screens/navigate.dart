//import 'package:location/location.dart';
//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:url_launcher/url_launcher.dart';




class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

 String name = "The Enchanted Nightingale";
 String CompanyName = "ABC Company";





  LatLng _initialCameraPosition = LatLng(20.5937,78.9629);
  // Location _location = Location();
  GoogleMapController mapController;
  double _originLatitude = 20.5937, _originLongitude = 78.9629;
  double _destLatitude =  20.5998, _destLongitude = 78.9689;
  Map<MarkerId, Marker> markers = {};
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();
  String googleAPiKey = "AIzaSyDo6Sv5YnKN7aAnXsO12ge2BWomWbBY1TA";

  @override
  void initState() {
    super.initState();

    _addMarker(LatLng(_originLatitude, _originLongitude), "origin",
        BitmapDescriptor.defaultMarker);

    _addMarker(LatLng(_destLatitude, _destLongitude), "destination",
        BitmapDescriptor.defaultMarker);
    _getPolyline();
  }

  call() async {
    const url = "tel:9458485900";
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw "Could not launch $url";
    }

  }

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomPadding: true,
          resizeToAvoidBottomInset:false,
          body:SingleChildScrollView(
         child: Column(

              children:[
                Container(
                    height: size.height*0.78,
                   // color: Colors.yellowAccent,
                    child:GoogleMap(
                      initialCameraPosition: CameraPosition(
                          target: LatLng(_originLatitude, _originLongitude), zoom: 15),
                      myLocationEnabled: true,
                      tiltGesturesEnabled: true,
                      compassEnabled: true,
                      scrollGesturesEnabled: true,
                      zoomGesturesEnabled: true,
                      onMapCreated: _onMapCreated,
                      markers: Set<Marker>.of(markers.values),
                      polylines: Set<Polyline>.of(polylines.values),
                    )
                ),

                //  Container(height: 10.0,color: Colors.white,),



                Container(
                    height:size.height*0.10,
                    width:size.width,
                    color: Colors.grey,
                    padding: EdgeInsets.only(left: 15.0),
                    child:
                    Row(

                    //  shrinkWrap: true,
                        children:[

                          SingleChildScrollView(
                         child: Container(
                              width: size.width*0.3,
                              height: size.height*0.05,
                              child:TextFormField(
                                scrollPadding: EdgeInsets.only(bottom: 50),
                               // controller: _firstController,
                                keyboardType: TextInputType.number,
                               decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 5,bottom: 2.0),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                               ),
                              )),
                          ),
                          SizedBox(width: 20.0,),
                          Container(
                              height:size.height*0.065,
                              width:170.0,
                              padding: EdgeInsets.only(left: 50.0),
                              child: RaisedButton(
                                child: Text("Verify"),
                                color: Colors.blue,
                                onPressed:() {},
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                              )
                          )
                        ]
                    )
                ),

       //  SizedBox(height: 0.0,),
    Card(

        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black38,width: 3.0),
          borderRadius: BorderRadius.circular(15.0,),
        ),
    elevation: 5.0,
    child: Container(
    height: size.height*0.12,
    width: size.width,
    padding: EdgeInsets.only(left: 10),
     // color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Icon(Icons.account_circle,size: size.height*0.09,color: Colors.lightGreen,),
            ],
          ),
         // SizedBox(width: size.width*0.1,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             // SizedBox(height:size.height*0.006 ,),
              Text("$name",style: TextStyle(fontSize: size.width*0.04,fontWeight: FontWeight.w800,color: Colors.green),),
              Text("$CompanyName",style: TextStyle(color: Colors.blueAccent),),
            ],
          ),

         // SizedBox(width: size.width*0.08,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Align(
              //  alignment:Alignment.centerRight,
            // child:


               FlatButton(
                onPressed: (){
                  call();
                 },
              child:Column(children:
              [
              Icon(Icons.phone,size: size.height*0.041,color: Colors.blue,),
                Text("CALL",style: TextStyle(color: Colors.blue,fontSize: 10),)
                 ])
              ),//)
            ],
          ),


        ],
      ),


    ))






               // Container(height: 10.0,),







              ]

          ),



        )
       )
    );
  }

  void _onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    // _location.onLocationChanged.listen((l){
    // controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
    //target:LatLng(l.latitude, l.longitude),zoom:15),
    //),);
    //});
  }

  _addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
    MarkerId markerId = MarkerId(id);
    Marker marker =
    Marker(markerId: markerId, icon: descriptor, position: position);
    markers[markerId] = marker;
  }

  _addPolyLine() {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id, color: Colors.red, points: polylineCoordinates,width: 3);
    polylines[id] = polyline;
    // setState(() {});
  }

  _getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        "AIzaSyDo6Sv5YnKN7aAnXsO12ge2BWomWbBY1TA",
        PointLatLng(_originLatitude, _originLongitude),
        PointLatLng(_destLatitude, _destLongitude),
        travelMode: TravelMode.transit,
        wayPoints: [PolylineWayPoint(location: "Sabo, Yaba Lagos Nigeria")]
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }

    _addPolyLine();
  }
}