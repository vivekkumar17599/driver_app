import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class uploadFile extends StatefulWidget {




  @override
  _uploadFileState createState() => _uploadFileState();
}

class _uploadFileState extends State<uploadFile> {


  File _image;
  final picker = ImagePicker();

  Future getImage() async{
    final pickerImage = await picker.getImage(source: ImageSource.camera,preferredCameraDevice: CameraDevice.rear);
    setState(() {

      if(pickerImage!=null){

      }
      else{
        print("no image selected");
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I want to raise a refund",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child:(
            Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                padding: EdgeInsets.only(left: 0.0,right: 0.0),
                height: 400,
               // width: 400,
              child: ListView(
               shrinkWrap: true,
                children: [

                  Card(
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38,),

                      ),
                      child: ListTile(
                        title: Text("Claim fuel refund",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w400),),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.green,),
                        leading: Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38,),),
                          child: Icon(Icons.help_rounded,),),
                        onTap: (){
                         // Navigator.push(context,MaterialPageRoute(builder: (context)=>uploadFile()));
                          getImage();
                        },
                      ),
                    ),
                  ),

                 SizedBox(height: 10.0,),

                  Card(
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38,),

                      ),
                      child: ListTile(
                        title: Text("I have been charged extra",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w400),),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.green,),
                        leading: Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38,),),
                          child: Icon(Icons.help_rounded),),
                        onTap: (){
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>uploadFile()));
                          getImage();
                        },
                      ),
                    ),
                  ),

                  SizedBox(height: 10.0,),

                  Card(
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38,),

                      ),
                      child: ListTile(
                        title: Text("Breakdown Repair Refund",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w400),),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.green,),
                        leading: Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38,),),
                          child: Icon(Icons.help_rounded),),
                        onTap: (){
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>uploadFile()));
                          getImage();
                        },
                      ),
                    ),
                  ),

                  SizedBox(height: 10.0,),

                  Card(
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38,),

                      ),
                      child: ListTile(
                        title: Text("I paid for a pending challan on the scooter",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w400),),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.green,),
                        leading: Container(
                          height: 30.0,
                           width: 30.0,
                           decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38,),),
                            child: Icon(Icons.help_rounded),),
                        onTap: (){
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>uploadFile()));
                          getImage();
                        },
                      ),
                    ),
                  ),




                ],
              )
              )
            ],
          ),
    )
    ),
    )
    );
  }
}


