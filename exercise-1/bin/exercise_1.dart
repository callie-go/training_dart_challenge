import 'dart:io';
import 'package:exercise_1/exercise_1.dart';

void main(List<String> arguments) {
  print("Nhập số cạnh của hình vuông");
  int squareSize = int.parse(stdin.readLineSync()!);
  createSquare(squareSize);
}
