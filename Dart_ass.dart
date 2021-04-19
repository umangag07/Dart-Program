import 'dart:io';
import 'dart:math';

class calculator {
  dynamic operand1, operand2, result;

  num TwoOperandInput() {
    print('Enter operand 1: ');
    operand1 = stdin.readLineSync();
    print('Enter operand 2: ');
    operand2 = stdin.readLineSync();
    try {
      operand1 = double.parse(operand1);
      operand2 = double.parse(operand2);
      return 1;
    } catch (e) {
      print("Input numbers only!!");
      return 0;
    }
  }

  num OneOperandInput() {
    print('Enter operand 1: ');
    operand1 = stdin.readLineSync();
    try {
      operand1 = double.parse(operand1);
      return 1;
    } catch (e) {
      print("Input numbers only!!");
      return 0;
    }
  }

  void Addition() {
    result = operand1 + operand2;
    print(
        '************************************\n Addition of $operand1 & $operand2 is: $result');
  }

  void Subtraction() {
    result = operand1 - operand2;
    print(
        '************************************\n Subtraction $operand1 & $operand2 is: $result');
  }

  void Multiplication() {
    result = operand1 * operand2;
    print(
        '************************************\n Multiplication of $operand1 & $operand2 is: $result');
  }

  void Division() {
    result = operand1 / operand2;
    print(
        '************************************\n Division of $operand1 & $operand2 is: $result');
  }

  void Power() {
    num result = pow(operand1, operand2);
    print(
        ' ************************************\n  $operand1 to the power $operand2 is: $result');
  }

  void SquareRoot() {
    result = sqrt(operand1);
    print(
        '************************************\n Square root of $operand1 is: $result');
  }

  void Factorial() {
    result = factorial(operand1);
    print(
        ' ************************************\n Factorial $operand1 is: $result');
  }

  void Modulus() {
    result = operand1 % operand2;
    print(
        ' ************************************\n Modulus $operand1 & $operand2 is: $result');
  }

  void NaturalLog() {
    result = log(operand1);
    print(
        ' ************************************\n  Natural Log ln of $operand1 is: $result');
  }

  void Sin() {
    num result = sin(operand1);
    print(
        ' ************************************\n Sin of $operand1 is: $result');
  }

  void Cos() {
    num result = cos(operand1);
    print(
        ' ************************************\n Sin of $operand1 is: $result');
  }

  void Tan() {
    num result = tan(operand1);
    print(
        ' ************************************\n Sin of $operand1 is: $result');
  }

  void ASin() {
    num result = asin(operand1);
    print(
        ' ************************************\n Sin of $operand1 is: $result');
  }

  void Acos() {
    num result = acos(operand1);
    print(
        ' ************************************\n Sin of $operand1 is: $result');
  }

  void ATan() {
    num result = atan(operand1);
    print(
        ' ************************************\n Sin of $operand1 is: $result');
  }
}

int factorial(int n) => n == 0 ? 1 : n * factorial(n - 1);
void Calculator() {
  var c = calculator();
  int wrongInput =
      0; // If user gives wrong input thrice, calculator will stop automatically
  var choice;
  stdout.write(
      "Enter \n +:For Addition \n -: For Subtraction \n x: For Multiplication \n \\: For Division \n %: For Modulo \n !: For Factorial \n s: For sqareRoot(√) \n ^: for Power \n ln: For natural log \n sin: For sin \n cos: For cos \n tan: For tan \n asin: For sin inverse \n acos: For cos inverse \n atan: For tan inverse \n 0:To exit calculator \n \n Your Input: ");
  choice = stdin.readLineSync();
  while (wrongInput <= 2 && choice != "0") {
    switch (choice) {
      case "+":
        {
          if (c.TwoOperandInput() == 1) {
            c.Addition();
          }
        }
        break;
      case "-":
        {
          if (c.TwoOperandInput() == 1) {
            c.Subtraction();
          }
        }
        break;
      case "x":
        {
          if (c.TwoOperandInput() == 1) {
            c.Multiplication();
          }
        }
        break;
      case "\\":
        {
          if (c.TwoOperandInput() == 1) {
            c.Division();
          }
        }
        break;
      case "%":
        {
          if (c.TwoOperandInput() == 1) {
            c.Modulus();
          }
        }
        break;
      case "!":
        {
          if (c.OneOperandInput() == 1) {
            c.Factorial();
          }
        }
        break;
      case "s":
        {
          if (c.OneOperandInput() == 1) {
            c.SquareRoot();
          }
        }
        break;
      case "^":
        {
          if (c.TwoOperandInput() == 1) {
            c.Power();
          }
        }
        break;
      case "ln":
        {
          if (c.OneOperandInput() == 1) {
            c.NaturalLog();
          }
        }
        break;
      case "sin":
        {
          if (c.OneOperandInput() == 1) {
            c.Sin();
          }
        }
        break;
      case "cos":
        {
          if (c.OneOperandInput() == 1) {
            c.Cos();
          }
        }
        break;
      case "tan":
        {
          if (c.OneOperandInput() == 1) {
            c.Tan();
          }
        }
        break;
      case "asin":
        {
          if (c.OneOperandInput() == 1) {
            c.ASin();
          }
        }
        break;
      case "acos":
        {
          if (c.OneOperandInput() == 1) {
            c.Acos();
          }
        }
        break;
      case "atan":
        {
          if (c.OneOperandInput() == 1) {
            c.ATan();
          }
        }
        break;

      default:
        {
          wrongInput = wrongInput + 1;
          print("\nInput correct choice only!!");
        }
    }
    if (wrongInput <= 2) {
      stdout.write(
          "\n\nEnter \n +:For Addition \n -: For Subtraction \n x: For Multiplication \n \\: For Division \n %: For Modulo \n !: For Factorial \n s: For sqareRoot(√) \n ^: for Power ^ \n ln: For natural log \n sin: For sin \n cos: For cos \n tan: For tan \n asin: For sin inverse \n acos: For cos inverse \n atan: For tan inverse \n 0:To exit calculator \n \n Your Input: ");
      choice = stdin.readLineSync();
    }
  }
}

void currency_converter() {
  dynamic Amount, from, country_list, c_list, rightInput, stop = 0;
  var country_code = {
    'US': "Usa",
    'RU': "Russia",
    'CH': "China",
    "GE": "Germany",
    'UK': "United Kingdom",
    "FR": "France",
    "JA": "Japan",
    "IS": "Israel",
    'IN': "India",
    'BR': "Brazil",
    'CA': "Canada",
    'AU': "Australia"
  };
  var to;
  var conversion = {
    "Usa": {
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
    "Russia": {
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
    "China": {
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
    "Germany": {
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
    "France": {
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
    "United kingdom": {
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
    "Japan": {
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
    "Israel": {
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
    "India": {
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
    "Brazil": {
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
    "Canada": {
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
    "Australia": {
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
    try {
      Amount = double.parse(Amount);
      rightInput = 1;
    } catch (e) {
      rightInput = 0;
    }
    if (rightInput == 1) {
      stdout.write("\nType the country to convert from:\n");
      country_list = conversion.keys.toList();
      print(country_list);
      stdout.write("\nFrom: ");
      from = stdin.readLineSync();
      if (country_list.contains(from)) {
        print(country_code);
        stdout.write("\nType the code to convert ");
        c_list = conversion[from]!.keys.toList();
        print(c_list);
        stdout.write("\nTo: ");
        to = stdin.readLineSync();
        if (c_list.contains(to)) {
          stdout.write("Amount in " + from + ": ");
          stdout.write(Amount);
          stdout.write("\nEqual Amout converted in ");
          stdout.write(country_code[to]);
          stdout.write(" will be: ");
          print(Amount * conversion[from]![to]);
        } else {
          print("\nWrong input\n");
        }
      } else {
        print("\nYour Input was wrong\n");
      }
    } else {
      print("\nEnter numbers only for amount!!\n");
    }
    stdout.write(
        " \n0: Continue converting \n1: Exit currency_converter  \nyour Input:");
    stop = stdin.readLineSync();
    if (stop == "0") {
      stop = 0;
    } else if (stop == "1") {
      stop = 1;
    } else {
      print("\nWrong Input\n");
      stop = 1;
    }
  }
}

void main() {
  int wrongInput =
      0; // if user given wrong input thrice program will stop automatically
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
          Calculator();
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
          wrongInput = wrongInput + 1;
        }
    }
    if (wrongInput <= 2) {
      stdout.write(
          '*********************************************** \n Enter\n 1: To use calculator \n 2: To use currency converter\n 0:To exit \n*********************************************** \n Your Input:  ');
      choice = stdin.readLineSync();
    }
  }
  if (wrongInput == 2) {
    print("\nYou have given wrong choice thrice.So, program has ended.\n");
  }
}
