import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: FadeDemo()));

class FadeDemo extends StatefulWidget {
  const FadeDemo({super.key});
  @override State<FadeDemo> createState() => _FadeDemoState();
}

class _FadeDemoState extends State<FadeDemo> with SingleTickerProviderStateMixin {
  late AnimationController c;
  @override void initState() { super.initState(); c = AnimationController(vsync: this, duration: const Duration(seconds: 2))..repeat(reverse: true); }
  @override void dispose() { c.dispose(); super.dispose(); }
  @override Widget build(BuildContext ctx) => Scaffold(
    body: Center(child: FadeTransition(opacity: c, child: const Text("Fading Text"))));
}