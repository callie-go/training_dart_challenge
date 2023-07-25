import 'dart:math';
import 'dart:io';

Random random = Random();
void main() {
  List<int> userList = [];
  List<int> randomList = computerRandomList();
  print('chào mừng bạn đến với trò chơi');

  bool playAgain = true;
  while (playAgain) {
    print("Mời bạn chọn ngẫu nhiên 4 số");
    for (int i = 0; i < 4; i++) {
      print('Mời bạn nhập số thứ ${i + 1}');
      int userInput = int.parse(stdin.readLineSync()!);
      userList.add(userInput);
    }
    print(userList);
    print(randomList);
    playGame(randomList, userList);
    userList = [];

    print("Bạn có muốn chơi lại không? yes/no");
    String inputPlayAgain = stdin.readLineSync()!;
    playAgain = inputPlayAgain == "yes";
  }
}

playGame(List<int> randomList, List<int> userList) {
  int bulls = 0;
  int cows = 0;
  for (int i = 0; i < userList.length; i++) {
    (userList[i] == randomList[i])
        ? cows++
        : (randomList.contains(userList[i]))
            ? bulls++
            : null;
  }
  if (bulls == 4) {
    print("Bạn đã đoán đúng 4 số");
  }
  print("Cows: $cows");
  print("Bulls: $bulls");
}

List<int> computerRandomList() {
  List<int> randomList = [];
  for (int i = 0; i < 4; i++) {
    randomList.add(random.nextInt(10));
  }
  return randomList;
}
