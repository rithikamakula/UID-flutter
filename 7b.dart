import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: ValidateForm()));

class ValidateForm extends StatefulWidget {
  const ValidateForm({super.key});
  @override State<ValidateForm> createState() => _ValidateFormState();
}

class _ValidateFormState extends State<ValidateForm> {
  final _key = GlobalKey<FormState>();
  final _ctrl = TextEditingController();

  @override
  Widget build(BuildContext c) => Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: Form(key: _key, child: Column(children: [
        TextFormField(
          controller: _ctrl,
          validator: (v) => v!.isEmpty ? "Required" : null,
          decoration: const InputDecoration(labelText: "Enter name"),
        ),
        ElevatedButton(onPressed: () {
          if (_key.currentState!.validate()) {
            ScaffoldMessenger.of(c).showSnackBar(SnackBar(content: Text("Hello, ${_ctrl.text}!")));
          }
        }, child: const Text("Submit"))
      ])),
    ),
  );
}