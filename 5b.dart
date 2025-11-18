import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Counter()));

class Counter extends StatefulWidget {
  const Counter({super.key});
  @override State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: const Text("Counter")),
    body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("Count: $count"),
      ElevatedButton(onPressed: () => setState(() => count++), child: const Text("Add")),
    ])),
  );
}