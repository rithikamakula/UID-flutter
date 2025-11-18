import 'package:flutter_test/flutter_test.dart';
import '../lib/main.dart'; // make sure add() is here

void main() {
  test("Addition Test", () {
    expect(add(2, 3), 5);
  });
}