createSquare(int squareSize) {
  String canhNgang = " --- ";
  String canhDoc = "|    ";
  String chieuNgang = "";
  String chieuDoc = "";
  String canhBia = "|";
  for (int i = 0; i < squareSize; i++) {
    for (int j = 0; j < squareSize; j++) {
      chieuNgang += canhNgang;
      chieuDoc += canhDoc;
      if (j + 1 == squareSize) {
        chieuDoc += canhBia;
      }
    }
    print(chieuNgang);
    print(chieuDoc);
    if (i + 1 == squareSize) {
      print(chieuNgang);
    }
    chieuNgang = "";
    chieuDoc = "";
  }
}
