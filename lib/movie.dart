import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basics/main.dart';

class Movie extends StatelessWidget {
  static const String _title = 'Flutter Basics - Movies';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF232323),

      body: Column(
        children: [
          // Top bar
          Container (
            color: Color(0xFFFFCA43),
            height: 80,
              child: Row(
                children: [
                  FlatButton(
                      padding: EdgeInsets.all(0),
                      splashColor: Color(0xFFFFCA43),
                      color: Color(0xFFFFCA43),
                      highlightColor: Color(0xFFFFCA43),

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FlutterBasics()),
                        );
                      },
                      child: Icon(Icons.chevron_left, color: Colors.black, size: 44)
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Icon(Icons.movie, color: Colors.black, size: 44),
                  Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                  Text('Flutter Basics - Movies', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 18,),),
                ],
              ),
          ),

          //Contents
          Container(
            width: MediaQuery.of(context).size.width * 1,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    child:Text('Title:', style: TextStyle(color: Colors.white, fontSize: 24,))),
                  Container(
                    height: 50,
                    child:Text('The Testing of an App: Begins', style: TextStyle(color: Colors.white, fontSize: 18,))),
                  Padding(padding: EdgeInsets.all(10)),
                  Container(child:Text('Rating:', style: TextStyle(color: Colors.white, fontSize: 24,))),
                  Container(
                      width: MediaQuery.of(context).size.width * 1,
                      child:Padding(
                          padding: EdgeInsets.all(10),
                          child:Text('8/10', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 24,)))),
                ]),
            )
          ),

          //Body children
        ]),

      //Buttons
      floatingActionButton: Container(
      width: MediaQuery.of(context).size.width * 0.95,
      padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
        child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton (
              heroTag: 'del',
              onPressed: () {
                print("Here we delete!");
              },
              backgroundColor: Color(0xFFFFCA43),
              child: Icon(Icons.delete, size: 24),
              foregroundColor: Colors.black,
            ),
            FloatingActionButton.extended(
              heroTag: 'rate',
              onPressed: () {
                print("Here we rate!");
              },
              icon: Icon(Icons.thumbs_up_down, size: 24),
              label: Text("Rate", style: TextStyle(fontSize: 14)),
              backgroundColor: Color(0xFFFFCA43),
              foregroundColor: Colors.black,
            ),
          ])
      ),
    );
  }
}