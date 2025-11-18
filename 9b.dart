import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(const MaterialApp(home: UserCards()));

class UserCards extends StatefulWidget {
  const UserCards({super.key});
  @override State<UserCards> createState() => _UserCardsState();
}

class _UserCardsState extends State<UserCards> {
  List users = [];
  @override void initState() { super.initState(); load(); }
  load() async {
    var res = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    setState(() => users = jsonDecode(res.body));
  }
  @override Widget build(BuildContext c) => Scaffold(
    body: ListView(children: users.map((u) =>
      Card(child: ListTile(title: Text(u['name']), subtitle: Text(u['email'])))).toList()),
  );
}