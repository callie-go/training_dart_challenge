import 'dart:io';

import 'package:unit_test_2/unit_test_2.dart' as unit_test_2;
import 'package:unit_test_2/unit_test_2.dart';

void main(List<String> arguments) {
  List<int> list1 = [];
  List<int> list2 = [];

  print("Input length list 1: ");
  int lengthList1 = int.parse(stdin.readLineSync()!);
  InputList(lengthList1, list1);

  print("Input length list 2: ");
  int lengthList2 = int.parse(stdin.readLineSync()!);
  InputList(lengthList2, list2);

  findElement(list1, list2);
  List<int> result = findElement(list1, list2);
  result = removeDuplicates(result);
  print(result);
}

InputList(int n, List<int> list) {
  for (int i = 0; i < n; i++) {
    print('Nhập phần tử thứ ${i + 1}');
    int element = int.parse(stdin.readLineSync()!);
    list.add(element);
  }
  print("Mang vua nhap: ");
  print(list);
}
