import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Scaffold(
  appBar: AppBar(title: const Text("Layouts")),
  body: Column(children: [
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: const [
      Icon(Icons.home), Icon(Icons.star), Icon(Icons.settings),
    ]),
    SizedBox(height: 20),
    Stack(children: [
      Container(width: 150, height: 150, color: Colors.orange),
      Positioned(top: 40, left: 40, child: Container(width: 70, height: 70, color: Colors.purple)),
    ])
  ]),
)));