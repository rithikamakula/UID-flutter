import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Scaffold(body: Center(child: MyBtn()))));

class MyBtn extends StatelessWidget {
  const MyBtn({super.key});
  @override
  Widget build(BuildContext c) => ElevatedButton(onPressed: () {}, child: const Text("Click Me"));
}