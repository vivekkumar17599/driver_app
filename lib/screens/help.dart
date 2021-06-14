import 'package:driver_app/screens/uploadFile.dart';
import 'package:flutter/material.dart';

class help extends StatefulWidget {
  @override
  _helpState createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
        backgroundColor: Colors.green,
      ),
      body: Container(
           padding: EdgeInsets.only(top: 10,left: 10,right: 10),
        child: ListView(
          shrinkWrap:true,
          children: [
            Text("Help Topics"),


           SizedBox(height: size.height*0.15,),

               Card(
                 elevation: 5,
                 child: Container(
                   decoration: BoxDecoration(
                       border: Border.all(color: Colors.black38,),

                   ),
                child: ListTile(
                  title: Text("I want to raise a query"),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                  leading: Icon(Icons.help_rounded),
                  onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>uploadFile()));
                  },
                ),
              ),
            )
          ],
        ),
        ),
    );
  }
}
