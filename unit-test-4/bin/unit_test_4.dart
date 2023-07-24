import 'dart:io';
import 'package:unit_test_4/unit_test_4.dart';

void main(List<String> arguments) {
  print('Nhập password: ');
  String password = stdin.readLineSync()!;
  (isPasswordValid(password))
      ? print("Password hợp lệ")
      : print("Password không hợp lệ");
}
