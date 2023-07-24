List<int> danhSachUocSo(int number) {
  List<int> result = [];
  int j = 0;
  for (int i = 1; i <= number / 2; i++) {
    if (number % i == 0) {
      result.add(i);
      j++;
    }
  }
  return result;
}
