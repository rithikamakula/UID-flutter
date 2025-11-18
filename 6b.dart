import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(primarySwatch: Colors.teal),
  home: Scaffold(appBar: AppBar(title: const Text("Theme Demo")),
    body: Center(child: ElevatedButton(onPressed: () {}, child: const Text("Themed Button")))),
));