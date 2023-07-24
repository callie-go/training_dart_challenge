import 'dart:io';
import 'dart:math';

enum Choice { keo, bua, bao }

void main() {
  print("Chào mừng đến với trò chơi kéo búa bao đấu với máy!");

  bool playAgain = true;
  while (playAgain) {
    print("\nLựa chọn của bạn (kéo, búa, bao): ");
    String userInput = stdin.readLineSync()!.toLowerCase();

    Choice userChoice;
    switch (userInput) {
      case 'keo':
        userChoice = Choice.keo;
        break;
      case 'bua':
        userChoice = Choice.bua;
        break;
      case 'bao':
        userChoice = Choice.bao;
        break;
      default:
        print("Lựa chọn không hợp lệ. Vui lòng thử lại.");
        continue;
    }

    Choice computerChoice = getRandomChoice();
    print("Lựa chọn của máy: ${getStringFromChoice(computerChoice)}");

    determineWinner(userChoice, computerChoice);

    print("Bạn có muốn chơi lại? (yes/exit): ");
    String playAgainInput = stdin.readLineSync()!.toLowerCase();
    playAgain = playAgainInput == 'yes';
  }

  print("Cảm ơn bạn đã chơi!");
}

Choice getRandomChoice() {
  List<Choice> choices = Choice.values;
  return choices[Random().nextInt(choices.length)];
}

String getStringFromChoice(Choice choice) {
  switch (choice) {
    case Choice.keo:
      return "keo";
    case Choice.bua:
      return "bua";
    case Choice.bao:
      return "bao";
  }
}

void determineWinner(Choice userChoice, Choice computerChoice) {
  if (userChoice == computerChoice) {
    print("Hòa nhau!");
  } else if ((userChoice == Choice.keo && computerChoice == Choice.bao) ||
      (userChoice == Choice.bua && computerChoice == Choice.keo) ||
      (userChoice == Choice.bao && computerChoice == Choice.bua)) {
    print("Bạn thắng!");
  } else {
    print("Máy thắng!");
  }
}
