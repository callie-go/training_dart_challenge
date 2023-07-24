import 'dart:io';
import 'package:unit_test_1/unit_test_1.dart';

void main(List<String> arguments) {
  print('Input a number: ');
  int inputNumber = int.parse(stdin.readLineSync()!);
  List<int> result = danhSachUocSo(inputNumber);
  print(result);
}
