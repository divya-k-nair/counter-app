import 'package:counter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(Count());
}
class Count extends StatefulWidget {

  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  int _value=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          title: Text("DECREMENT"),
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
                    onPressed: (){
                      setState(() {
                        _value--;
                      });
                      print(_value);

                  },
                    child: Text("-",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 60,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Count",
                 style:TextStyle(
                   color: Colors.pinkAccent,
                   fontSize: 50,
                 ),
                ),
                SizedBox(height: 20,),
                Text(_value.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: 20,),
                Text("Times",
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.cyan,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Counter()));

                  },
                    child: Text("BACK TO HOME",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
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
