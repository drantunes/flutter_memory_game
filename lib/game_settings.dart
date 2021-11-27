class GameSettings {
  static const niveis = [6, 8, 10, 12, 16, 18, 20, 24, 28];

  static const cardOpcoes = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];

  static gameBoardAxisCount(int nivel) {
    if (nivel < 10) {
      return 2;
    } else if (nivel == 10 || nivel == 12 || nivel == 18) {
      return 3;
    } else {
      return 4;
    }
  }
}
