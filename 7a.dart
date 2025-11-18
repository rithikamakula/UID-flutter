import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyForm()));

class MyForm extends StatelessWidget {
  const MyForm({super.key});
  @override
  Widget build(BuildContext c) => Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(decoration: const InputDecoration(labelText: "Name")),
    ),
  );
}