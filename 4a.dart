import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: First()));

class First extends StatelessWidget {
  @override
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: const Text("First")),
    body: Center(child: ElevatedButton(
      onPressed: () => Navigator.push(c, MaterialPageRoute(builder: (_) => Second())),
      child: const Text("Go Next"),
    )),
  );
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: const Text("Second")),
    body: Center(child: ElevatedButton(
      onPressed: () => Navigator.pop(c), child: const Text("Back"),
    )),
  );
}