import 'dart:io';

void main(s) {
//Question#1:Display congagulation you have passed if amrks are 40 and above
  stdout.write("Enter your marks plz");
  String? marksinStr = stdin.readLineSync();
  int marks = int.parse(marksinStr!);
  if (marks >= 40) {
    print('Congragulations!You have passed');
  } else {
    print('You have failed');
  }

  //Question#2:Enter two values and check if theya re equal or not

  stdout.write("Enter value 1");
  String? value1inStr = stdin.readLineSync();
  int value1 = int.parse(value1inStr!);
  stdout.write("Enter value 2");
  String? value2inStr = stdin.readLineSync();
  int value2 = int.parse(value2inStr!);
  if (value1 == value2) {
    print('Both values are equal');
  } else {
    print('Both values are not equal');
  }

  //Question#3:Enter two values and check if second value is square of first

  stdout.write("Enter first no");
  String? no1inStr = stdin.readLineSync();
  int no1 = int.parse(no1inStr!);
  stdout.write("Enter second no");
  String? no2inStr = stdin.readLineSync();
  int no2 = int.parse(no2inStr!);
  if (no1 * no1 == no2) {
    print('second value is square of first');
  } else {
    print('second value is not square of first');
  }

  //Question#4:Enter marks of 3 subjects ,if average is above 80 then display message You are above ,admission granted
  stdout.write("Enter marks of first subject");
  String? sub1inStr = stdin.readLineSync();
  int sub1 = int.parse(sub1inStr!);
  stdout.write("Enter marks of second subject");
  String? sub2inStr = stdin.readLineSync();
  int sub2 = int.parse(sub2inStr!);
  stdout.write("Enter marks of third subject");
  String? sub3inStr = stdin.readLineSync();
  int sub3 = int.parse(sub3inStr!);
  double average = (sub1 + sub2 + sub3) / 3;
  if (average > 80) {
    print("You are above standard");
    print("Admission granted");
  }

  //Question#5:Take 3 input and display max no
  stdout.write("Enter first no");
  String? number1inStr = stdin.readLineSync();
  int number1 = int.parse(number1inStr!);
  stdout.write("Enter second no");
  String? number2inStr = stdin.readLineSync();
  int number2 = int.parse(number2inStr!);
  stdout.write("Enter third no");
  String? number3inStr = stdin.readLineSync();
  int number3 = int.parse(number3inStr!);

  int max = number1;
  if (number2 > max) {
    max = number2;
  }

  if (number3 > max) {
    max = number3;
  }

  print("The max number is ${max}");

  //Question#6:Take inpput and determine whether its positive ,negative or 0
  stdout.write("Enter no to check");
  String? nocheckinStr = stdin.readLineSync();
  int nocheck = int.parse(nocheckinStr!);

  if (nocheck > 0) {
    print("no is positive");
  }
  if (nocheck < 0) {
    print("no is negative");
  }
  if (nocheck == 0) {
    print("no is zero");
  }

  //Question#7:Take 5 input and display max & min no
  stdout.write("Enter the first value");
  String? firstinStr = stdin.readLineSync();
  int first = int.parse(firstinStr!);
  stdout.write("Enter the second value");
  String? second2inStr = stdin.readLineSync();
  int second = int.parse(second2inStr!);
  stdout.write("Enter the third value");
  String? thirdinStr = stdin.readLineSync();
  int third = int.parse(thirdinStr!);
  stdout.write("Enter the fourth value");
  String? fourthinStr = stdin.readLineSync();
  int fourth = int.parse(fourthinStr!);
  stdout.write("Enter the fifth value");
  String? fifthinStr = stdin.readLineSync();
  int fifth = int.parse(fifthinStr!);

  int larger = first;
  if (second > larger) {
    larger = second;
  }

  if (third > larger) {
    larger = third;
  }

  if (fourth > larger) {
    larger = fourth;
  }
  if (fifth > larger) {
    larger = fifth;
  }

  int smallest = first;
  if (second < smallest) {
    smallest = second;
  }

  if (third < smallest) {
    smallest = third;
  }

  if (fourth < smallest) {
    smallest = fourth;
  }
  if (fifth < smallest) {
    smallest = fifth;
  }

  print("The max number is ${larger}");
  print("The smallest number is ${smallest}");

//Question#8:Take input and display if its even or odd
  stdout.write("Enter the value to check");
  String? evenoddinStr = stdin.readLineSync();
  int evenodd = int.parse(evenoddinStr!);
  if (evenodd % 2 == 0) {
    print('The number is even');
  } else {
    print('The number is odd');
  }

  //Question#9:Take input as year and display if its leap year or not

  stdout.write("Enter the year to check");
  String? yearinStr = stdin.readLineSync();
  int year = int.parse(yearinStr!);
  if (year % 4 == 0) {
    print('The year is leap');
  } else {
    print('The year is not leap');
  }

  //Question#10:Take input as grade and salary,it adds 50% if grade is greater then 15 for rest it displays net salary with 25% allowance

  stdout.write("Enter the your Salary");
  String? salaryinStr = stdin.readLineSync();
  int Salary = int.parse(salaryinStr!);
  stdout.write("Enter the your Grade");
  String? GradeinStr = stdin.readLineSync();
  int Grade = int.parse(GradeinStr!);
  double? bonus = 0;
  if (Grade > 15) {
    bonus = (Salary * (50 / 100)).toDouble();
  } else {
    bonus = (Salary * (25 / 100)).toDouble();
  }
  Salary = Salary + (bonus).toInt();
  print('Your total Salary is : ${Salary}');

//Question#11:Take 2 inputs and determine if 1st integer is multiple of 2nd

  stdout.write("Enter the the first integer");
  String? firstIntinStr = stdin.readLineSync();
  int firstInt = int.parse(firstIntinStr!);
  stdout.write("Enter the your Grade");
  String? SecondinStr = stdin.readLineSync();
  int SecondInt = int.parse(SecondinStr!);

  if (firstInt % SecondInt == 0) {
    print("The first is multiple of second");
  } else {
    print("The first is not multiple of second");
  }
}
