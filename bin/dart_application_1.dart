import 'dart:io';

class Calculator {
  void run() {
    bool shouldContinue = true;

    while (shouldContinue) {
      print("Enter the operation (+, -, *, /) or 'q' to quit: ");
      String? operation = stdin.readLineSync()?.trim();

      if (operation == 'q') {
        shouldContinue = false;
        continue;
      }

      print("Enter the first operand: ");
      double operand1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

     print("Enter the second operand: ");
      double operand2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

      double result = performOperation(operation!, operand1, operand2);

      print("Result: $result");
    }

    print("Calculator is closed.");
  }

  double performOperation(String operation, double operand1, double operand2) {
    switch (operation) {
      case '+':
        return operand1 + operand2;
      case '-':
        return operand1 - operand2;
      case '*':
        return operand1 * operand2;
      case '/':
        return operand1 / operand2;
      default:
        print("Invalid operation.");
        return double.nan;
    }
  }
}

void main() {
  Calculator calculator = Calculator();
  calculator.run();
}



