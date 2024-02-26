import 'dart:io';

void main() {
  List<String> studentNames = [];
  List<String> studentAges = [];
  List<String> studentGrades = [];

  print("Welcome to School Management System");

  while (true) {
    print("\n1. Add Student");
    print("2. View Students");
    print("3. Exit");

    print("Enter your choice:");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      print("Enter student's name:");
      String studentName = stdin.readLineSync()!;
      studentNames.add(studentName);

      print("Enter student's age:");
      String studentAge = stdin.readLineSync()!;
      studentAges.add(studentAge);

      print("Enter student's grade:");
      String studentGrade = stdin.readLineSync()!;
      studentGrades.add(studentGrade);

      print("Student added successfully!");

      stdin.readLineSync();
    } 
    else if (choice == '2') {
      if (studentNames.isNotEmpty) {
        print("\nStudent Details:");
        for (int i = 0; i < studentNames.length; i++) {
          print("----------------------------------------------------------------------------");
          print("Student ${i + 1}:");
          print("Name: ${studentNames[i]}");  
          print("Age: ${studentAges[i]}");
          print("Grade: ${studentGrades[i]}");
          print("----------------------------------------------------------------------------");
        }
      } 
      else {
        print("No student added yet.");
      }
    } 
    else if (choice == '3') {
      print("Thank you for using School Management System.");
      break; // Exits the program from here
    } 
    else {
      print("Invalid choice. Please enter a valid option.");
    }
  }
}