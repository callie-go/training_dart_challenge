// InputList(int n, List<int> list){
//     for(int i=0;i<n;i++){
//         print('Nhập phần tử thứ ${i+1}');
//         int element = int.parse(stdin.readLineSync()!);
//         list.add(element);
//     }
//     print("Mang vua nhap: ");
//     print(list);
// }

List<int> findElement(List<int> list1, List<int> list2) {
  List<int> result = [];
  for (int element1 in list1) {
    if (list2.contains(element1)) {
      result.add(element1);
    }
  }
  result = removeDuplicates(result);
  return result;
}

List<int> removeDuplicates(List<int> list) {
  Set<int> uniqueElements = Set<int>.from(list);
  return uniqueElements.toList();
}
