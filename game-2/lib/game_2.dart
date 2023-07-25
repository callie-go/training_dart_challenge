import 'dart:math';
import 'dart:io';

Random random = Random();

void main() {
  print('Chào mừng bạn đến với game đoán số');

  bool playAgain = true;
  while (playAgain) {
    print('\nMời bạn chọn số ngẫu nhiên từ 1 đến 100');
    int userInput = int.parse(stdin.readLineSync()!);

    determineWinner(userInput);
    print("Bạn có muốn chơi lại không, yes/no:");
    String playAgainInput = stdin.readLineSync()!.toLowerCase();
    playAgain = playAgainInput == "yes";
  }
  print("Cảm ơn bạn đã chơi game!");
}

void determineWinner(int userInput) {
  int randomNumber = random.nextInt(101);
  print(randomNumber);

  String result = (randomNumber == userInput)
      ? "Bạn thắng"
      : (randomNumber < userInput)
          ? "Bạn đoán số lớn hơn"
          : "Bạn đoán số nhỏ hơn";

  print(result);
}
