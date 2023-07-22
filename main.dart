import 'dart:io';

class Calculator {
  double add(double a, double b) => a + b;
  double subtract(double a, double b) => a - b;
  double multiply(double a, double b) => a * b;
  double divide(double a, double b) => a / b;
}

void main() {
  var calc = Calculator();
  var operator;
  var operand1, operand2;

  while (operator != 'q') {
    print('Enter an operator (+, -, *, / and q to exit ): ');
    operator = stdin.readLineSync();
    
    if (operator == 'q') {
      break;
    }

    print('Enter the first operand: ');
    try {
      operand1 = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print('Invalid input: $e');
      continue;
    }

    print ('Enter the second operand: ');
    try {
      operand2 = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print('Invalid input: $e');
      continue;
    }

    switch (operator) {
      case '+':
        print('Result: ${calc.add(operand1, operand2)}');
        break;
      case '-':
        print('Result: ${calc.subtract(operand1, operand2)}');
        break;
      case '*':
        print('Result: ${calc.multiply(operand1, operand2)}');
        break;
      case '/':
        if (operand2 == 0) {
          print("Error");
        } else {
          print('Result: ${calc.divide(operand1, operand2)}');
        }
        break;
      default:
        print('Invalid operation');
    }
  }
}