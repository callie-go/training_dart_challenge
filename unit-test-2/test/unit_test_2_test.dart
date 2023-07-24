import 'package:unit_test_2/unit_test_2.dart';
import 'package:test/test.dart';

void main() {
  test('Kiểm tra hàm findElementDupplicates()', () {
    List<int> inputList1 = [1, 2, 3, 4, 5];
    List<int> inputList2 = [3, 4, 5, 6, 7];
    expect(findElementDupplicates(inputList1, inputList2), equals([3, 4, 5]));
  });

  test('Kiểm tra hàm findElementDupplicates() với số lặp lại', () {
    List<int> inputList1 = [1, 2, 3, 4, 5];
    List<int> inputList2 = [2, 4, 6, 8, 10];
    expect(findElementDupplicates(inputList1, inputList2), equals([2, 4]));
  });

  test('Kiểm tra hàm findElementDupplicates() với danh sách rỗng', () {
    List<int> inputList1 = [];
    List<int> inputList2 = [2, 4, 6, 8, 10];
    expect(findElementDupplicates(inputList1, inputList2), equals([]));
  });

  test('Kiểm tra hàm findElementDupplicates() với danh sách trùng lặp', () {
    List<int> inputList1 = [1, 2, 2, 3, 4, 5, 5];
    List<int> inputList2 = [2, 4, 5, 6, 7];
    expect(findElementDupplicates(inputList1, inputList2), equals([2, 4, 5]));
  });

  test('Kiểm tra hàm findElementDupplicates() với danh sách trống', () {
    List<int> inputList1 = [];
    List<int> inputList2 = [];
    expect(findElementDupplicates(inputList1, inputList2), equals([]));
  });
}
