import 'package:unit_test_4/unit_test_4.dart';
import 'package:test/test.dart';

void main() {
  test('Kiểm tra mật khẩu hợp lệ', () {
    expect(isPasswordValid('abc123@'), isTrue);
    expect(isPasswordValid('StrongPassword123*'), isTrue);
    expect(isPasswordValid('Hello123!'), isTrue);
  });

  test('Kiểm tra mật khẩu không hợp lệ do độ dài ngắn', () {
    expect(isPasswordValid('abc12'), isFalse);
  });

  test('Kiểm tra mật khẩu không hợp lệ do thiếu chữ cái', () {
    expect(isPasswordValid('1234567'), isFalse);
  });

  test('Kiểm tra mật khẩu không hợp lệ do thiếu kí tự đặt biệt', () {
    expect(isPasswordValid('ABC123'), isFalse);
  });

  test('Kiểm tra mật khẩu không hợp lệ do thiếu số', () {
    expect(isPasswordValid('Abcdef'), isFalse);
  });

  test('Kiểm tra mật khẩu không hợp lệ do không đáp ứng các điều kiện', () {
    expect(isPasswordValid('123456'), isFalse);
    expect(isPasswordValid('Abc'), isFalse);
    expect(isPasswordValid('abcdef'), isFalse);
  });
}
