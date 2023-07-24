import 'package:unit_test_1/unit_test_1.dart';
import 'package:test/test.dart';

void main() {
  test('Kiểm tra danh sách ước số của 10', () {
    expect(danhSachUocSo(10), equals([1, 2, 5]));
  });

  test('Kiểm tra danh sách ước số của 20', () {
    expect(danhSachUocSo(20), equals([1, 2, 4, 5, 10]));
  });

  test('Kiểm tra danh sách ước số của 30', () {
    expect(danhSachUocSo(30), equals([1, 2, 3, 5, 6, 10, 15]));
  });

  test('Kiểm tra danh sách ước số của 1', () {
    expect(danhSachUocSo(1), equals([]));
  });

  test('Kiểm tra danh sách ước số của số âm', () {
    expect(danhSachUocSo(-10), equals([]));
  });
}
