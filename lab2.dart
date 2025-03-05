import 'dart:io';

void main() {
  stdout.write("Enter your age: ");
  String? input = stdin.readLineSync()?.trim(); // Trim spaces

  if (input == null || input.isEmpty) {
    print("Error: No input provided. Please enter a valid number.");
    return;
  }

  try {
    int age = int.parse(input);

    if (age < 0) {
      print("Error: Age cannot be negative. Please enter a valid age.");
    } else if (age > 100) {
      print("Wow! You've already lived past 100 years!");
    } else {
      int yearsLeft = 100 - age;
      print("You have $yearsLeft years left until you turn 100.");
    }
  } catch (e) {
    print("Error: Invalid input! Please enter a valid number.");
  }
}
