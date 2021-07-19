import 'package:counter_app/decrement.dart';
import 'package:counter_app/increment.dart';
import 'package:counter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(Home());
}
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.purpleAccent,
                onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>App()));

              },
                child: Text("INCREMENT",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                  ),
              ),
            ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.purpleAccent,
                onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Count()));

              },
                child: Text("DECREMENT",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ],//children
        ),
      ),
    );
  }
}
