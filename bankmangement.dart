import 'dart:io';

void main() {
  int? choice;
  print('Welcome to Rana Bank');
  print('Press 1 to show menu');
  while (choice != 9) {
    choice = nums();
    switch (choice) {
      case 1:
        {
          print(
              'Press 1 to show menu \nPress 2 to create account \nPress 3 to credit account \nPress 4 to Debit account \nPress 5 to show account detail \nPress 6 to Add to record \nPress 7 to bank transfer \n Press 8 to show record \nPress 9 to exit');
          break;
        }
      case 2:
        {
          createaccount();
          break;
        }
      case 3:
        {
          credit();
          break;
        }
      case 4:
        {
          debit();
          break;
        }
      case 5:
        {
          showDetail();
          break;
        }
      case 6:
        {
          addtorecord();
          break;
        }

      case 7:
        {
          banktransfer();
          break;
        }
      case 8:
        {
          showbankrecord();
          break;
        }
      default:
        {
          if (choice != 9) {
            print('invalid range');
            break;
          }
        }
    }
  }
  print("program exited");
}

String? name;
int total = 500;
int? amount;
Map<String, int> account = {};
int nums() {
  stdout.write('Enter the number');
  int a = int.parse(stdin.readLineSync()!);
  return a;
}

void createaccount() {
  total = 500;
  stdout.write('Enter the name of account');
  name = stdin.readLineSync()!;
}

void credit() {
  stdout.write('Enter the ampount');
  amount = nums();
  total = total + amount!;
}

void debit() {
  stdout.write('Enter the ampount');
  amount = nums();
  if (amount! < total) {
    total = total - amount!;
  } else {
    print('total balance is $total');
  }
}

void showDetail() {
  print('The account $name has totalmoney : $total');
}

void addtorecord() {
  account[name!] = total;
  print('record added');
}

void banktransfer() {
  stdout.write('Enter the name');
  String accountname = stdin.readLineSync()!;
  if (account.containsKey(accountname)) {
    stdout.write('Enter the amount plzz');
    amount = nums();
    if (amount! < total) {
      total = total - amount!;
      account[name!] = total;
      var newtotal = account[accountname];
      newtotal = newtotal! + amount!;
      account[accountname] = newtotal;
    } else {
      print('your total amount is $total');
    }
  } else {
    print('no naccount by such name exists');
  }
}

void showbankrecord() {
  print(account);
}
