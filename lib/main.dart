import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
}
}

class _MyAppState extends State<MyApp> {

  List<String> restaurants = [
    'ICE',
    'Street Food',
    'CAFE',
    'Tea',
    'Pav bhaji'
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/download.png'),
              SizedBox(height: 20.0),
              Text('What do you want to eat ?'),
              SizedBox(height: 10.0),
            if(currentIndex!=null)
            Text(restaurants[currentIndex],style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
            ),
              SizedBox(height: 10.0),
              FlatButton(
                  onPressed:() {
                    updateIndex();
                  },
                  child: Text('Pick Restaurant'),
                color: Colors.purple,
                textColor: Colors.white,
              )
          ],
          ))),
    );
  }
  void updateIndex(){
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState(() {
      currentIndex = index;
    });
  }
}
