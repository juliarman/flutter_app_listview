import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData.light(),
      home: ScrollScreenView(),

    );
  }
}


class ScrollScreenView extends StatelessWidget {

  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('ScrollScreenView'),

      ),

      body: ListView(
        
        children: numberList.map((number){

          return Container(


          height: 250,
          decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black),

          ),

          child: Center(

          child: Text(

          '$number',
          style: TextStyle(fontSize: 50),

          ),

          ),


          );

    }).toList(),

      ),

    );
  }
}
