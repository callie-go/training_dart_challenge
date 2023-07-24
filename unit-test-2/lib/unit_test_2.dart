List<int> findElementDupplicates(List<int> inputList1, List<int> inputList2) {
  List<int> result = [];
  for (int element1 in inputList1) {
    if (inputList2.contains(element1)) {
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
