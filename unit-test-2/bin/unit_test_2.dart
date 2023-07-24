import 'dart:io';
import 'package:unit_test_2/unit_test_2.dart';

void main(List<String> arguments) {
  List<int> inputList1 = [];
  List<int> inputList2 = [];

  print("Nhập vào chiều dài list thứ nhất: ");
  int lengthOfInputList1 = int.parse(stdin.readLineSync()!);
  inputList(lengthOfInputList1, inputList1);

  print("Nhập vào chiều dài list thứ hai: ");
  int lengthOfInputList2 = int.parse(stdin.readLineSync()!);
  inputList(lengthOfInputList2, inputList2);

  findElementDupplicates(inputList1, inputList2);
  List<int> result = findElementDupplicates(inputList1, inputList2);
  result = removeDuplicates(result);
  print("Mảng các phần tử trùng nhau là: ");
  print(result);
}

inputList(int n, List<int> list) {
  for (int i = 0; i < n; i++) {
    print('Nhập phần tử thứ ${i + 1}');
    int element = int.parse(stdin.readLineSync()!);
    list.add(element);
  }
  print("Mảng vừa nhập là: ");
  print(list);
}
