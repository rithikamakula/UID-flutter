import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/', routes: {
    '/': (_) => const Home(),
    '/second': (_) => const Second(),
  },
));

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: const Text("Home")),
    body: Center(child: ElevatedButton(
      onPressed: () => Navigator.pushNamed(c, '/second'),
      child: const Text("Go Second"),
    )),
  );
}

class Second extends StatelessWidget {
  const Second({super.key});
  @override
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: const Text("Second")),
    body: Center(child: ElevatedButton(
      onPressed: () => Navigator.pop(c), child: const Text("Back"),
    )),
  );
