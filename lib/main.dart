import 'package:flutter/material.dart';

void main() => runApp(MyG());

class MyG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Gridview"),
        ),
        body:
        Grider(),


      )
    );
  }
}

class Grider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 3,
        scrollDirection: Axis.vertical,
        children: List.generate(18, (index){
          return Center(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 150,
              width: 150,
              child:Image(image: AssetImage("assets/aru.jpg")),
            ) ,
          );
        })
    );
  }
}