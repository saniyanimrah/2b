import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {  
  @override 
  Widget build(BuildContext context) {  
    return MaterialApp(
      title: 'CombinedLayoutExample',
      home: Scaffold(
        appBar: AppBar(title: Text('CombinedLayout')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,  
                children: [
                  Icon(Icons.home, size: 50, color: Colors.blue),
                  Icon(Icons.person, size: 50, color: Colors.yellow),
                  Icon(Icons.star, size: 50, color: Colors.green),
                ],
              ),
              SizedBox(height: 20),  
              Stack(  
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                  ),
                  Positioned(
                    top: 50,
                    left: 50,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                  ),
                  Positioned(
                    top: 75,
                    left: 75,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(Icons.access_alarm, size: 50, color: Colors.purple),  
                      SizedBox(height: 10),
                      Icon(Icons.access_time, size: 50, color: Colors.red),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Icon(Icons.camera, size: 50, color: Colors.orange),
                      SizedBox(height: 10),
                      Icon(Icons.phone, size: 50, color: Colors.teal),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
