import 'dart:io';
import 'dart:math';

int factorial(int n) => n == 0 ? 1 : n * factorial(n - 1);

void calculator() {
  int wrongInput = 0;
  var choice;
  stdout.write(
      "Enter \n +:For Addition \n -: For Subtraction \n x: For Multiplication \n \\: For Division \n %: For Modulo \n !: For Factorial \n s: For sqareRoot(√) \n ^: for Power \n ln: For natural log \n sin: For sin \n cos: For cos \n tan: For tan \n asin: For sin inverse \n acos: For cos inverse \n atan: For tan inverse \n 0:To exit calculator \n \n Your Input: ");
  choice = stdin.readLineSync();
  dynamic? operand1, operand2;
  while (wrongInput <= 2 && choice != "0") {
    switch (choice) {
      case "+":
        {
          print('Enter operand 1: ');
          operand1 = stdin.readLineSync();
          print('Enter operand 2: ');
          operand2 = stdin.readLineSync();
          double result = double.parse(operand1) + double.parse(operand2);
          print(
              '************************************\n Addition of $operand1 & $operand2 is: $result');
        }
        break;
      case "-":
        {
          print('Enter operand 1: ');
          operand1 = stdin.readLineSync();
          print('Enter operand 2: ');
          operand2 = stdin.readLineSync();
          double result = double.parse(operand1) - double.parse(operand2);
          print(
              '************************************\n Subtraction $operand1 & $operand2 is: $result');
        }
        break;
      case "x":
        {
          print('Enter operand 1: ');
          operand1 = stdin.readLineSync();
          print('Enter operand 2: ');
          operand2 = stdin.readLineSync();
          double result = double.parse(operand1) * double.parse(operand2);
          print(
              '************************************\n Multiplication of $operand1 & $operand2 is: $result');
        }
        break;
      case "\\":
        {
          print('Enter operand 1: ');
          operand1 = stdin.readLineSync();
          print('Enter operand 2: ');
          operand2 = stdin.readLineSync();
          num result = double.parse(operand1) / double.parse(operand2);
          print(
              ' ************************************\nDivision $operand1 & $operand2 is: $result');
        }
        break;
      case "%":
        {
          print('Enter operand 1: ');
          operand1 = stdin.readLineSync();
          print('Modulus');
          print('Enter operand 2: ');
          operand2 = stdin.readLineSync();
          num result = double.parse(operand1) % double.parse(operand2);
          print(
              ' ************************************\n Modulus $operand1 & $operand2 is: $result');
        }
        break;
      case "!":
        {
          print('Enter operand 1: ');
          operand1 = stdin.readLineSync();
          num result = factorial(int.parse(operand1));
          print(
              ' ************************************\n Factorial $operand1 is: $result');
        }
        break;
      case "s":
        {
          print('Enter operand 1: ');
          operand1 = stdin.readLineSync();
          num result = sqrt(double.parse(operand1));
          print(
              ' ************************************\n SquareRoot $operand1 is: $result');
        }
        break;
      case "^":
        {
          print('Enter operand 1: ');
          operand1 = stdin.readLineSync();
          print('Enter operand 2 for power: ');
          operand2 = stdin.readLineSync();
          num result = pow(double.parse(operand1), double.parse(operand2));
          print(
              ' ************************************\n  $operand1 to the power $operand2 is: $result');
        }
        break;
      case "ln":
        {
          print('Enter operand 1 for natural log: ');
          operand1 = stdin.readLineSync();
          num result = log(double.parse(operand1));
          print(
              ' ************************************\n  Natural Log ln of $operand1 is: $result');
        }
        break;
      case "sin":
        {
          print('Enter operand 1 (In radians): ');
          operand1 = stdin.readLineSync();
          num result = sin(double.parse(operand1));
          print(
              ' ************************************\n Sin of $operand1 is: $result');
        }
        break;
      case "cos":
        {
          print('Enter operand 1 (In radians): ');
          operand1 = stdin.readLineSync();
          num result = cos(double.parse(operand1));
          print(
              ' ************************************\n Cos of $operand1 is: $result');
        }
        break;
      case "tan":
        {
          print('Enter operand 1 (In radians): ');
          operand1 = stdin.readLineSync();
          num result = tan(double.parse(operand1));
          print(
              ' ************************************\n Tan of $operand1 is: $result');
        }
        break;
      case "asin":
        {
          print('Enter operand 1 : ');
          operand1 = stdin.readLineSync();
          num result = asin(double.parse(operand1));
          print(
              ' ************************************\n asin of $operand1 is: $result');
        }
        break;
      case "acos":
        {
          print('Enter operand 1 : ');
          operand1 = stdin.readLineSync();
          num result = acos(double.parse(operand1));
          print(
              ' ************************************\n acos of $operand1 is: $result');
        }
        break;
      case "atan":
        {
          print('Enter operand 1: ');
          operand1 = stdin.readLineSync();
          num result = atan(double.parse(operand1));
          print(
              ' ************************************\n atan of $operand1 is: $result');
        }
        break;

      default:
        {
          wrongInput = wrongInput + 1;
          print("Input correct choice only!!");
        }
    }
    print(
        "Enter \n +:For Addition \n -: For Subtraction \n x: For Multiplication \n \\: For Division \n %: For Modulo \n !: For Factorial \n s: For sqareRoot(√) \n ^: for Power ^ \n ln: For natural log \n sin: For sin \n cos: For cos \n tan: For tan \n asin: For sin inverse \n acos: For cos inverse \n atan: For tan inverse \n 0:To exit calculator \n \n Your Input: ");
    choice = stdin.readLineSync();
  }
}

// usa, russia(russian rubble), china(Chinese Yuan Renminbi), germany(euro), united kingdom(pound), france (euro), japan(yen), israel(Israeli New Shekels), India (INR), Brazil(Brazilian Reais), Canada (canadian dollar), Australia(australian dollar)
void currency_converter() {
  int wrongInput = 0;
  dynamic Amount, from, stop = 0;
  var to;
  var conversion = {
    "usa": {
      "RU": 75.80,
      "CH": 6.53,
      "GE": 0.83,
      "UK": 0.72,
      "FR": 0.83,
      "JA": 108.86,
      "IS": 3.28,
      "IN": 74.46,
      "BR": 5.61,
      "CA": 1.25,
      "AU": 1.29
    },
    "russia": {
      "US": 0.013,
      "CH": 0.860,
      "GE": 0.011,
      "UK": 0.009,
      "FR": 0.83,
      "JA": 0.011,
      "IS": 0.043,
      "IN": 0.984,
      "BR": 0.073,
      "CA": 0.016,
      "AU": 0.017
    },
    "china": {
      "US": 0.153,
      "RU": 11.61,
      "GE": 0.128,
      "UK": 0.110,
      "FR": 0.128,
      "JA": 16.68,
      "IS": 0.502,
      "IN": 11.43,
      "BR": 0.857,
      "CA": 0.191,
      "AU": 0.198
    },
    "germany/france": {
      "US": 1.198,
      "CH": 7.812,
      "UK": 0.866,
      "JA": 130.32,
      "IS": 3.92,
      "IN": 89.32,
      "BR": 6.702,
      "CA": 1.498,
      "AU": 1.548
    },
    "united_kingdom": {
      "US": 1.382,
      "RU": 104.71,
      "GE": 1.154,
      "CH": 9.015,
      "FR": 1.154,
      "JA": 150.41,
      "IS": 4.534,
      "IN": 103.12,
      "BR": 7.743,
      "CA": 1.729,
      "AU": 1.787
    },
    "japan": {
      "US": 0.009,
      "RU": 0.696,
      "GE": 0.0076,
      "CH": 0.059,
      "FR": 0.0076,
      "UK": 0.0066,
      "IS": 0.301,
      "IN": 0.685,
      "BR": 0.513,
      "CA": 0.114,
      "AU": 0.118
    },
    "israel": {
      "US": 0.304,
      "RU": 23.090,
      "GE": 0.254,
      "CH": 1.987,
      "FR": 0.254,
      "UK": 0.220,
      "JA": 33.16,
      "IN": 22.72,
      "BR": 1.702,
      "CA": 0.381,
      "AU": 0.394
    },
    "india": {
      "US": 0.013411,
      "RU": 1.105,
      "GE": 0.011,
      "CH": 0.087,
      "FR": 0.011,
      "UK": 0.009,
      "JA": 1.459,
      "IS": 0.044,
      "BR": 0.0749,
      "CA": 0.016,
      "AU": 0.017
    },
    " brazil": {
      "US": 0.179,
      "RU": 13.56,
      "GE": 0.149,
      "CH": 1.168,
      "FR": 0.149,
      "UK": 0.129,
      "JA": 19.48,
      "IS": 0.058,
      "IN": 13.35,
      "CA": 0.223,
      "AU": 0.23
    },
    "canada": {
      "US": 0.799,
      "RU": 60.57,
      "GE": 0.667,
      "CH": 5.21,
      "FR": 0.667,
      "UK": 0.578,
      "JA": 86.98,
      "IS": 2.62,
      "BR": 4.46,
      "IN": 59.60,
      "AU": 1.03
    },
    "australia": {
      "US": 0.773,
      "RU": 58.58,
      "GE": 0.645,
      "CH": 5.04,
      "FR": 0.645,
      "UK": 0.559,
      "JA": 84.12,
      "IS": 2.53,
      "BR": 4.31,
      "IN": 57.64,
      "CA": 0.96
    }
  };
  while (stop != 1) {
    stdout.write("\n Enter amount to be converted: ");
    Amount = stdin.readLineSync();
    Amount = double.parse(Amount);
    stdout.write("\n Type the country to convert from ");
    print(conversion.keys.toList());
    stdout.write("  From: ");
    from = stdin.readLineSync();
    stdout.write("\nTo ");
    print(conversion[from]!.keys.toList());
    stdout.write("To: ");
    to = stdin.readLineSync();
    stdout.write("\n Convert Amout is: ");
    print(Amount * conversion[from]![to]);
    stdout.write(
        "\n1: Exit currency_converter \n0: Continue converting \nyour Input:");
    stop = stdin.readLineSync();
    if (stop == "1") {
      stop = 1;
    } else {
      stop = 0;
    }
  }
  // while (wrongInput != 2 && stop != 0) {
  //   switch (from) {
  //     case "US":
  //       {
  //         print(Amount * usa[to]);
  //       }
  //       break;
  //     case "RU":
  //       {
  //         print(Amount * russia[to]);
  //       }
  //       break;
  //     case "CH":
  //       {
  //         print(Amount * china[to]);
  //       }
  //       break;
  //     case "GE":
  //       {
  //         print(Amount * germany_france[to]);
  //       }
  //       break;
  //     case "UK":
  //       {
  //         print(Amount * united_kingdom[to]);
  //       }
  //       break;
  //     case "JA":
  //       {
  //         print(Amount * japan[to]);
  //       }
  //       break;
  //     case "IS":
  //       {
  //         print(Amount * israel[to]);
  //       }
  //       break;
  //     case "IN":
  //       {
  //         print(Amount * india[to]);
  //       }
  //       break;
  //     case "BR":
  //       {
  //         print(Amount * brazil[to]);
  //       }
  //       break;
  //     case "CA":
  //       {
  //         print(Amount * canada[to]);
  //       }
  //       break;
  //     case "AU":
  //       {
  //         print(Amount * australia[to]);
  //       }
  //       break;
  //     default:
  //       {
  //         print('\n Enter right choice \n');
  //         wrongInput = wrongInput + 1;
  //       }
  //   }
  //   stdout.write(
  //       "\n 1: to continue \n 0: to stop exit currecny converter \n your Input: ");
  //   stop = stdin.readLineSync();
  //   if (stop == "1") {
  //     stop = 1;
  //     stdout.write("\n Enter amount to be converted: ");
  //     Amount = stdin.readLineSync();
  //     stdout.write("\n Convert From: ");
  //     from = stdin.readLineSync();
  //     stdout.write("\n Convert To: ");
  //     to = stdin.readLineSync();
  //   } else {
  //     stop = 0;
  //   }
  // }
}

void main() {
  int wrongInput = 0;
  dynamic choice;
  stdout.write(
      '***********************************************\n Enter\n 1: To use calculator \n 2: To use currency converter\n 0:To exit \n*********************************************** \n Your Input:  ');

  choice = stdin.readLineSync();
  while (wrongInput <= 2 && choice != "0") {
    switch (choice) {
      case "1":
        {
          print(
              "*******************************************\nYou have selected: $choice TO USE CALCULATOR \n*******************************************");
          calculator();
          break;
        }
      case "2":
        {
          print(
              "***********************************************\nYou have selected: $choice TO USE CURRENCY CONVERTER \n***********************************************");
          currency_converter();
          break;
        }

      default:
        {
          print("\n Wrong choice:1 or 2 only!! \n");
          wrongInput++;
        }
    }
    stdout.write(
        '*********************************************** \n Enter\n 1: To use calculator \n 2: To use currency converter\n 0:To exit \n*********************************************** \n Your Input:  ');
    choice = stdin.readLineSync();
  }
  if (wrongInput == 2) {
    print("\nYou have given wrong choice twice.So, program has ended.\n");
  }
}
