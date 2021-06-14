import 'dart:io';
import 'package:file_picker/file_picker.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'dashboard.dart';


class uploadPDF extends StatefulWidget {
  @override
  _uploadPDFState createState() => _uploadPDFState();
}

class _uploadPDFState extends State<uploadPDF> {

  uploadFile() async{
    FilePickerResult result = await FilePicker.platform.pickFiles();
    if(result!=null){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));
    }
  }
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
              builder: (context) =>  BottomNavScreen(),
            ));
      }
      else{
        print("no image selected");
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Upload documents"),
        ),
     body: SingleChildScrollView(
       padding: EdgeInsets.only(top:size.height*0.3,bottom: size.height*0.4,left: size.width*0.15,right: size.width*0.15),
          child: Column(
            children: [
              Container(
               // alignment: Alignment.center,
                width: size.width*0.9,
              child:RaisedButton(
                child: Text("Capture Image"),
                onPressed: getImage,
              )
              ),

               SizedBox(height: size.height*0.01,),
              Container(
               // alignment:Alignment.center,
                  width: size.width*0.9,
                  child:RaisedButton(
                    child: Text("Upload File"),
                    onPressed: uploadFile,
                  )
              ),

            ],
          ),
        ),
     )

    );
  }
}

