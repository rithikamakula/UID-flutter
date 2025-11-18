import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: AnimateBox()));

class AnimateBox extends StatefulWidget {
  const AnimateBox({super.key});
  @override State<AnimateBox> createState() => _AnimateBoxState();
}

class _AnimateBoxState extends State<AnimateBox> {
  double size = 100;
  @override
  Widget build(BuildContext c) => Scaffold(
    body: Center(child: Column(children: [
      AnimatedContainer(duration: const Duration(seconds: 1),
        width: size, height: size, color: Colors.blue),
      ElevatedButton(onPressed: () => setState(() => size = size == 100 ? 200 : 100),
        child: const Text("Animate"))
    ])),
  );
}