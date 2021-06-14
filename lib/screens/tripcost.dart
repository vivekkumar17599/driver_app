import 'package:flutter/material.dart';

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';

//import 'package:image_picker/image_picker.dart';
class tripcost extends StatefulWidget {
  @override
  _tripcostState createState() => _tripcostState();
}

class _tripcostState extends State<tripcost> {



  final pdf = pw.Document();

  writeOnPdf(){
    pdf.addPage(
        pw.MultiPage(
          pageFormat: PdfPageFormat.a5,
          margin: pw.EdgeInsets.all(32),

          build: (pw.Context context){
            return <pw.Widget>  [
              pw.Header(
                  level: 0,
                  child: pw.Text("TAX INVOICE")
              ),

              pw.Paragraph(
                  text: "Base Fare :   20 "
              ),

              pw.Paragraph(
                  text: "Total Fare :   13"
              ),
              pw.Paragraph(
                  text: "Distance Fare :   64"
              ),
              pw.Paragraph(
                  text: "Paise Time Fare :   5.67"
              ),


            ];
          },


        )
    );
  }

  Future savePdf() async{
    Directory documentDirectory = await getApplicationDocumentsDirectory();

    String documentPath = documentDirectory.path;

    File file = File("$documentPath/example.pdf");

    file.writeAsBytesSync(pdf.save());
  }





  //Future _generatePdf( PdfPageFormat format,String title)
  //async {
    //final pdf = pw.Document();

   // pdf.addPage(
     // pw.Page(
       // pageFormat: format,
       // build: (context) {
         // return pw.Center(
           // child: pw.Text(title),
          //);
        //},
      //),
    //);

    //return pdf.save();

//}











var date = "23th May 2020";
var time = "10:30 pm";
var Booking_id = "Booking Id : 123ABC";
var vehicle = "Vehicle: Hyundai I20";
var pickUp = "Vidyaranyapura, Bengaluru";


TextEditingController _firstController = TextEditingController();
TextEditingController _secondController = TextEditingController();

  Widget showAlertDialog(BuildContext context){
    AlertDialog alert= AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      content: Container(
        height: 120.0,
        width: 220.0,
        // color: Colors.yellow,
        child: Column(
          children: [
            SizedBox(height:07.0),
            Text("Avinash Kumar",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 15.0,),
            Text("Company name : abc",style:TextStyle(
              fontSize: 20.0,
            )),
            SizedBox(height: 15.0,),

          ],
        ),
      ),
    );
    showDialog(context: context,builder: (BuildContext context){
      return alert;
    });
  }

  double total;
  double firstValue=0.0;
  @override
  void sum(){
   if(_firstController.text.trim().isNotEmpty) {
      firstValue = double.parse(_firstController.text);
     total = firstValue * 5;
   }

  }
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Bookings"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5.0),
          child: Column(

                    children: [


                      IconButton(
                        icon: Icon(Icons.picture_as_pdf),
                        onPressed: ()async {
                          //_generatePdf(PdfPageFormat.a4,"hello");

                          writeOnPdf();
                          await savePdf();

                          Directory documentDirectory = await getApplicationDocumentsDirectory();

                          String documentPath = documentDirectory.path;

                          String fullPath = "$documentPath/example.pdf";

                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => PdfPreviewScreen(path: fullPath,)
                          ));







                        }
                      ),

              Container(
                padding: EdgeInsets.only(left: 5),
                height: size.height*0.04,
                width: size.width*0.95,
                //color: Colors.black12,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("BOOKING DETAIL",style: TextStyle(color: Colors.black54,fontSize: 12),),
                FlatButton(onPressed: (){}, child: Icon(Icons.help_rounded,color: Colors.orangeAccent,))
              ],),
              ),

            Card(
              elevation: 5,
              child: Container(
              padding: EdgeInsets.only(left: 8,right: 10),
                height: size.height*0.07,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(

                      children: [





                        Text("$date,",style: TextStyle(color: Colors.black87,fontSize: 13),),
                        Text("$time",style: TextStyle(color: Colors.black87,fontSize: 13),),


                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("$Booking_id",style: TextStyle(color: Colors.black87,fontSize: 11),),
                        Text("$vehicle",style: TextStyle(color: Colors.black87,fontSize: 11),),


                      ],
                    )

                  ],
                ),
              ),
            ),

              SizedBox(height: 20.0,),
            Container(
              width: size.width*0.95,
              padding: EdgeInsets.only(left: 5),
             // color: Colors.black12,
            child:Text("PickUp and Drop Location",style: TextStyle(color: Colors.black54,fontSize: 13),)),


              Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.only(top: 5,left: 5,right: 5),
                  height: size.height*0.07,
                  width: size.width,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Text("Pickup at :"),
                      Text("$pickUp"),
                    ],
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Drop at :"),
                        Text("$pickUp"),
                      ],
                    ),
                ]),
                ),
              ),



              SizedBox(height: 30.0,),

          Container(
            width: size.width*0.95,
            height: 15,
            padding: EdgeInsets.only(left: 15,right: 15),
           // color: Colors.black12,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
            Text("FARE DETAILS",style: TextStyle(color: Colors.black54,fontSize: 13),),
                FlatButton(
                    onPressed:(){

                    },
                    child: Text("View Invoice",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 10),))
              ]
            )
          ),

           Card(
             elevation: 5,
           child:Container(
             height: size.height*0.08,
             width: size.width*0.97,
           padding: EdgeInsets.only(left: 5,right: 10),
           child:Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 padding: EdgeInsets.only(left: 5,right: 5),
               child:Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:[
               Text("Total Fare : ",style: TextStyle(fontSize: 14.0),),
               SizedBox(width: size.width*0.4,),
               Text("\$102.67",style: TextStyle(fontSize: 14.0),),
               IconButton(
                 icon: Icon(Icons.arrow_drop_down_outlined,color: Colors.orangeAccent,size: 38,),
                 onPressed: (){
                 },

               )

              ]),
               ),


            ],

          ),
        ),
      ),




                      Card(
                          shape: RoundedRectangleBorder(
                          ),
                          elevation: 5,
                          child:Container(
                            height: size.height*0.28,
                            width: size.width*0.97,
                            padding: EdgeInsets.only(left: 15,right: 15),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Base fare"),
                                    Text("Rs 20")
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Distance fare(10.7 kms)"),
                                    Text("Rs 64")
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Time fare(1 hour 25 mins)"),
                                    Text("Rs 13")
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Total",style: TextStyle(fontWeight: FontWeight.w800),),
                                    Text("Rs 97",style: TextStyle(fontWeight: FontWeight.w800),)
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Coupon Discount"),
                                    Text("-Rs 75.0",style: TextStyle(color: Colors.lightBlueAccent),)
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Total paid amount",style: TextStyle(fontWeight: FontWeight.w800),),
                                    Text("Rs 27.67",style:TextStyle(color: Colors.lightBlueAccent))
                                  ],
                                )











                              ],
                            ),
                          )
                      )

]
    )))
    );
  }
}



class PdfPreviewScreen extends StatelessWidget {
  final String path;

  PdfPreviewScreen({this.path});

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
      path: path,
    );
  }
}