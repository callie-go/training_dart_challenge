createSquare(int squareSize) {
  String ngang = " --- ";
  String doc = "|    ";
  String cNgang = "";
  String cDoc = "";
  String canh = "|";
  for (int i = 0; i < squareSize; i++) {
    for (int j = 0; j < squareSize; j++) {
      cNgang += ngang;
      cDoc += doc;
      if (j + 1 == squareSize) {
        cDoc += canh;
      }
    }
    print(cNgang);
    print(cDoc);
    if (i + 1 == squareSize) {
      print(cNgang);
    }
    cNgang = "";
    cDoc = "";
  }
}
