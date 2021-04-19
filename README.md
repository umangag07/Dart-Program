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
 
### 2. Calculator menu (If input was 1) 
 
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
  #### Program will return automatically to the main menu after 3 wrong inputs.

### 3. Currecny Converter (If input was 2) 
```
***********************************************
You have selected: 2 TO USE CURRENCY CONVERTER
***********************************************

 Enter amount to be converted: 40 

Type the country to convert from:
[Usa, Russia, China, Germany, France, United kingdom, Japan, Israel, India, Brazil, Canada, Australia]

From: Israel
{US: Usa, RU: Russia, CH: China, GE: Germany, UK: United Kingdom, FR: France, JA: Japan, IS: Israel, IN: India, BR: Brazil, CA: Canada, AU: Australia}

Type the code to convert [US, RU, GE, CH, FR, UK, JA, IN, BR, CA, AU]

To: AU
Amount in Israel: 40.0
Equal Amout converted in Australia will be: 15.760000000000002

0: Continue converting
1: Exit currency_converter
your Input:

```
This has the small menu in end to ask if user wants to continue or not.

## Input validations are also there if user has entered the right input or not, if not then appropriate message is shown.
