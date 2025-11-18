// Dart Basics Tutorial
// This program demonstrates fundamental Dart language concepts

void main() {
  print('=== Welcome to Dart Basics ===\n');

  // 1. Variables and Data Types
  print('--- Variables and Data Types ---');
  
  int age = 25;
  double height = 5.9;
  String name = 'Alice';
  bool isStudent = true;
  
  print('Name: $name');
  print('Age: $age');
  print('Height: $height');
  print('Is Student: $isStudent');
  print('');

  // 2. Dynamic Type
  print('--- Dynamic Type ---');
  dynamic flexible = 'String';
  print('Flexible variable: $flexible');
  flexible = 42;
  print('Flexible variable changed to: $flexible');
  print('');

  // 3. String Operations
  print('--- String Operations ---');
  String greeting = 'Hello';
  String surname = 'Dart';
  String fullGreeting = greeting + ' ' + surname;
  print(fullGreeting);
  print('Length of greeting: ${greeting.length}');
  print('Uppercase: ${greeting.toUpperCase()}');
  print('');

  // 4. Arithmetic Operations
  print('--- Arithmetic Operations ---');
  int a = 10;
  int b = 3;
  print('$a + $b = ${a + b}');
  print('$a - $b = ${a - b}');
  print('$a * $b = ${a * b}');
  print('$a / $b = ${a / b}');
  print('$a ~/ $b = ${a ~/ b}'); // Integer division
  print('$a % $b = ${a % b}'); // Modulo
  print('');

  // 5. Conditional Statements
  print('--- Conditional Statements ---');
  int score = 85;
  if (score >= 90) {
    print('Grade: A');
  } else if (score >= 80) {
    print('Grade: B');
  } else if (score >= 70) {
    print('Grade: C');
  } else {
    print('Grade: F');
  }
  
  // Ternary operator
  String status = score >= 80 ? 'Passed' : 'Failed';
  print('Status: $status');
  print('');

  // 6. Loops
  print('--- Loops ---');
  
  // For loop
  print('For loop - Numbers 1 to 5:');
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
  print('');

  // While loop
  print('While loop - Count down from 3:');
  int count = 3;
  while (count > 0) {
    print(count);
    count--;
  }
  print('');

  // ForEach loop
  print('ForEach loop - List items:');
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  fruits.forEach((fruit) => print(fruit));
  print('');

  // 7. Collections (List, Set, Map)
  print('--- Collections ---');
  
  // List
  List<int> numbers = [1, 2, 3, 4, 5];
  print('List: $numbers');
  print('First element: ${numbers.first}');
  print('Last element: ${numbers.last}');
  print('Length: ${numbers.length}');
  print('');

  // Set (unordered, unique elements)
  Set<String> colors = {'red', 'green', 'blue', 'red'};
  print('Set: $colors'); // Notice 'red' appears only once
  print('');

  // Map (key-value pairs)
  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 28,
  };
  print('Map: $ages');
  print('Alice\'s age: ${ages['Alice']}');
  print('');

  // 8. Functions
  print('--- Functions ---');
  int sum = add(10, 20);
  print('Sum of 10 and 20: $sum');
  
  greet('Dart');
  print('');

  // 9. Arrow Functions
  print('--- Arrow Functions ---');
  List<int> squaredNumbers = numbers.map((n) => n * n).toList();
  print('Squared numbers: $squaredNumbers');
  print('');

  // 10. Named Parameters
  print('--- Named Parameters ---');
  describePerson(name: 'Alice', age: 25, city: 'New York');
  print('');

  // 11. Optional Parameters
  print('--- Optional Parameters ---');
  printInfo('Alice');
  printInfo('Bob', 'Engineer');
  print('');

  // 12. Classes
  print('--- Classes ---');
  Person person = Person('John', 28);
  person.introduce();
  print('');

  // 13. Null Safety
  print('--- Null Safety ---');
  String? nullableString;
  String nonNullableString = 'Hello';
  print('Non-nullable: $nonNullableString');
  nullableString = 'Now assigned';
  print('Previously null, now: $nullableString');
  print('');

  print('=== End of Dart Basics ===');
}

// Simple function
int add(int x, int y) {
  return x + y;
}

// Function with no return type
void greet(String language) {
  print('Hello from $language!');
}

// Named parameters
void describePerson({
  required String name,
  required int age,
  String city = 'Unknown',
}) {
  print('Name: $name, Age: $age, City: $city');
}

// Optional parameters (positional)
void printInfo(String name, [String? profession]) {
  if (profession != null) {
    print('$name is a $profession');
  } else {
    print('$name - profession unknown');
  }
}

// Class definition
class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method
  void introduce() {
    print('Hi, I\'m $name and I\'m $age years old');
  }

  // Getter
  bool get isAdult => age >= 18;
}
