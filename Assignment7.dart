import 'dart:io';

void main() {
//Question#1:display back counting from 0 to 1 using do while loops
  int counting = 10;
  do {
    print(counting);
    counting--;
  } while (counting >= 1);

  //Question:2:Take 2 inputs from user and display result of first input number power to second number
  stdout.write('Enter the first number whose power u want');
  String? firstnostr = stdin.readLineSync();
  int firstno = int.parse(firstnostr!);

  stdout.write('Enter the power');
  String? secondnostr = stdin.readLineSync();
  int secondno = int.parse(secondnostr!);
  int counter = 0;
  int pow = 1;

  do {
    pow = pow * firstno;
    counter++;
  } while (counter < secondno);
  print(pow);

  //Question#3:Enter the number to check its palindrome or not

  stdout.write('Enter the number to check its palindrome');
  String? palindromenoinstr = stdin.readLineSync();
  int palindromeno = int.parse(palindromenoinstr!);
  int check = palindromeno;
  int digit;
  int reminder = 0;

  do {
    digit = palindromeno % 10;
    reminder = (reminder * 10) + digit;
    palindromeno = palindromeno ~/ 10;
  } while (palindromeno != 0);
  if (reminder == check) {
    print('The number is palindrome');
  } else {
    print('the number is not palindrome');
  }

  //Question#4:Take two input from user as starting and ending point and display odd number between
  stdout.write('Enter the starting point');
  String? starting = stdin.readLineSync();
  int start = int.parse(starting!);

  stdout.write('Enter the ending point');
  String? endng = stdin.readLineSync();
  int end = int.parse(endng!);

  int countingstart = start;
  do {
    if (countingstart % 2 != 0) {
      print(countingstart);
    }
    countingstart++;
  } while (countingstart <= end);

  //Question#5:Take input from user to know that telephone is working or not
  String s;
  do {
    print('Enter the state of phone \'w\' for working  \'d\' for dead');
    String? states = stdin.readLineSync();
    s = (states!);
  } while (s != 'w' && s != 'd');
}
