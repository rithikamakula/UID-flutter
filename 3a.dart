import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: ResponsiveApp()));

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(body: Center(
      child: Text(w < 600 ? "Mobile" : w < 1200 ? "Tablet" : "Desktop"),
    ));
  }
}