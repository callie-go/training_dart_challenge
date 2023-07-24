import 'package:unit_test_3/unit_test_3.dart';
import 'package:test/test.dart';

void main() {
  test('Kiểm tra hàm isPrime()', () {
    expect(isPrime(2), isTrue);
    expect(isPrime(3), isTrue);
    expect(isPrime(5), isTrue);
    expect(isPrime(7), isTrue);
    expect(isPrime(11), isTrue);

    expect(isPrime(4), isFalse);
    expect(isPrime(6), isFalse);
    expect(isPrime(8), isFalse);
    expect(isPrime(9), isFalse);
    expect(isPrime(10), isFalse);
  });

  test('Kiểm tra hàm isPrime() với số âm', () {
    expect(isPrime(-1), isFalse);
    expect(isPrime(-2), isFalse);
    expect(isPrime(-10), isFalse);
  });
}
