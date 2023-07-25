import 'dart:io';

void main() {
  bool playAgain = true;
  print('Chào mừng bạn đến với game chiếc nón kì diệu');

  while (playAgain) {
    print("Nhập từ khóa: ");
    String guessedWords = stdin.readLineSync()!.toLowerCase();
    List<String> listGuessedWords =
        List.generate(guessedWords.length, (_) => '_');

    while (true) {
      print("Từ khóa: ${listGuessedWords.join(" ")}");

      print("\nNhập kí tự:: ");
      String userInput = stdin.readLineSync()!.toLowerCase();

      if (userInput == 'exit') {
        break;
      }

      bool correctGuess = false;
      for (int i = 0; i < guessedWords.length; i++) {
        if (guessedWords[i] == userInput) {
          listGuessedWords[i] = userInput;
          correctGuess = true;
        }
      }

      if (!correctGuess) {
        print("Từ bạn nhập không có trong từ khóa");
      }

      if (!listGuessedWords.contains("_")) {
        print("Chúc mừng bạn đã đoán đúng!");
        print(guessedWords);

        print("Play again? (yes/no)");
        String playAgainInput = stdin.readLineSync()!.toLowerCase();
        playAgain = playAgainInput == 'yes';
        break;
      }
    }
  }
}
