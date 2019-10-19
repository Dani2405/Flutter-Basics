import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
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
  int _count = 0;

  Widget build(BuildContext context) {
    // to hide both top and bottom bar:
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      backgroundColor: Color(0xFF232323),

      /*appBar: AppBar(
        backgroundColor: Color(0xFFFFCA43),
      ),*/


      body: Column(
        children: [
          Container (
            color: Color(0xFFFFCA43),
            height: 80,
            child: Padding (
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Row(
                children: [
                  Icon(Icons.movie, color: Colors.black, size: 44),
                  Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                  Text('Flutter Basics - Movies', style: TextStyle(color: Colors.black, fontSize: 18,),),
                ],
              ),
            ),
          ),

          Container(
            height: 40,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  children: [
                    Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text('Title', style: TextStyle(color: Colors.white, fontSize: 18,)),),

                    Container(
                    child: Text('Rating', style: TextStyle(color: Colors.white, fontSize: 18,)),),
                  ],
                ),
            ),
          ),

          Column(
            children: [
              Container(
                color: Color(0xFF2F2F2F),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text('The Testing of an App: Begins', overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 14)),),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: Text('8/10', style: TextStyle(color: Colors.white, fontSize: 14)),),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.05,
                      child: Icon(Icons.chevron_right, color: Colors.white,),),
                  ],
                ),
              ),

              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1.0, color: Color(0xFF252525)),
                  ),
                ),
              ),


            ],
          ),
        ],
      ),


      floatingActionButton: Container(
        height: 60.0,
        width: 60.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Color(0xFFFFCA43),
            child: Icon(Icons.add, color: Colors.black,),
          ),
        ),
      ),
    //Centers button
    //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
