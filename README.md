# Calculator and CurrencyConverter.

# How to run:
1. Install dart sdk on the machine and set the env variable.
   * For mac - https://learningflutter.net/install-dart-macos/
   * For windows - https://www.tutorialkart.com/dart/install-dart-on-windows/
3. Run on command line and VsCode editor(Install the dart plugin first). Using following command -:
 ```
 Dart Dart_ass.dart
 ```
 # What not to do: 
 Don't run on online dart codegrounds because it is menu driven program. Next step depends on your current input.
 
 # Programs Menus 
 
 ### 1. Main menu - (Program will stop automatically after 3 wrong inputs.)
 ```
 ***********************************************
 Enter
 1: To use calculator
 2: To use currency converter
 0:To exit
***********************************************
 Your Input:

```
 
### 2. Calculator menu (If input was 1)- (Program will return automatically to the main menu after 3 wrong inputs).
```
*******************************************
You have selected: 1 TO USE CALCULATOR
*******************************************
Enter
 +:For Addition
 -: For Subtraction
 x: For Multiplication
 \: For Division
 %: For Modulo
 !: For Factorial
 s: For sqareRoot(√)
 ^: for Power
 ln: For natural log
 sin: For sin
 cos: For cos
 tan: For tan
 asin: For sin invers
 acos: For cos inverse
 atan: For tan inverse
 0:To exit calculator

 Your Input:
```

### 3. Currecny Converter (If input was 2) 
```
Enter amount to be converted: 3456

Type the country to convert from:
[usa, russia, china, germany/france, united_kingdom, japan, israel, india,  brazil, canada, australia]

From: usa
{Usa: US, Russia: RU, China: CH, Germany: GE, United Kingdom: UK, France: FR, Japan: JA, Israel: IS, India: IS, Brazil: BR, Canada: CA, Australia: AS}

Type the code to convert [RU, CH, GE, UK, FR, JA, IS, IN, BR, CA, AU]

To: IN

Converted Amout is: 257333.75999999998

1: Exit currency_converter
0: Continue converting
your Input:

```
This has the small menu in end to ask if user wants to continue or not.

## Input validations are also there if user has entered the right input or not, if not then appropriate message is shown.
