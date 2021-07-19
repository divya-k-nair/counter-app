import 'dart:developer';

import 'package:counter_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(App());
}
class App extends StatefulWidget {

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
    int _value=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          title: Text("INCREMENT"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.purpleAccent,
                    onPressed:(){
                      setState(() {
                        _value++;
                      });
                      print(_value);


                  },
                    child: Text("+",
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 50,
                     ),
                  ),
                ),
                ),
                SizedBox(height: 20,),
                Text("Count",style:TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                ),
                ),


                SizedBox(height: 30,),
                Text(_value.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: 20,),
                Text("Times",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.purpleAccent,
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Counter()));

                  },
                    child: Text("BACK TO HOME",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30,
                      ),
                  ),

                ),
                ),
              ],//children
            ),
          ),

        ),
      ),
    );
  }
}

