import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Scaffold(
  body: LayoutBuilder(builder: (ctx, c) {
    if (c.maxWidth < 600) return const Text("Mobile View");
    if (c.maxWidth < 1200) return const Text("Tablet View");
    return const Text("Desktop View");
  }),
)));