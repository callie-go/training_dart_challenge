import 'package:unit_test_2/unit_test_2.dart';
import 'package:test/test.dart';

void main() {
  test('Kiểm tra hàm FindElement()', () {
    List<int> list1 = [1, 2, 3, 4, 5];
    List<int> list2 = [3, 4, 5, 6, 7];
    expect(findElement(list1, list2), equals([3, 4, 5]));
  });

  test('Kiểm tra hàm FindElement() với số lặp lại', () {
    List<int> list1 = [1, 2, 3, 4, 5];
    List<int> list2 = [2, 4, 6, 8, 10];
    expect(findElement(list1, list2), equals([2, 4]));
  });

  test('Kiểm tra hàm FindElement() với danh sách rỗng', () {
    List<int> list1 = [];
    List<int> list2 = [2, 4, 6, 8, 10];
    expect(findElement(list1, list2), equals([]));
  });

  test('Kiểm tra hàm FindElement() với danh sách trùng lặp', () {
    List<int> list1 = [1, 2, 2, 3, 4, 5, 5];
    List<int> list2 = [2, 4, 5, 6, 7];
    expect(findElement(list1, list2), equals([2, 4, 5]));
  });

  test('Kiểm tra hàm FindElement() với danh sách trống', () {
    List<int> list1 = [];
    List<int> list2 = [];
    expect(findElement(list1, list2), equals([]));
  });
}
