import 'dart:io';
import 'package:unit_test_3/unit_test_3.dart';

void main(List<String> arguments) {
  print("Input number: ");
  int inputNumber = int.parse(stdin.readLineSync()!);
  (isPrime(inputNumber))
      ? print("La so nguyen to")
      : print("Khong la so nguyen to");
}
