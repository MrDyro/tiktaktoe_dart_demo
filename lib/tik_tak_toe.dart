import 'package:tik_tak_toe/console_helper.dart';

class TikTakToe {
  List<List<String>> _placements;
  bool _playerOne = true;

  TikTakToe() {
    _placements = List.generate(3, (i) => List.generate(3, (j) => ' '));
    _printCurrentGame();

    for (var i = 2; i < 7; i--) {
      _askForInput();
      _printCurrentGame();
      final doWeHaveAWinner = _calcWinner();
      if (doWeHaveAWinner) {
        print('Spieler ${_playerOne ? '1' : '2'} hat gewonnen!');
        break;
      }
      _playerOne = !_playerOne;
    }
  }

  void _printCurrentGame() {
    ConsoleHelper.printGame(_placements);
  }

  void _askForInput() {
    print('Spieler ${_playerOne ? '1' : '2'} ist an der Reihe.');

    final input = ConsoleHelper.readInput();

    final column = _convertColumnInputToIndex(input[0]);
    final row = _convertRowInputToIndex(input[1]);

    if (_playerOne) {
      _placements[row][column] = 'X';
    } else {
      _placements[row][column] = 'O';
    }
  }

  bool _calcWinner() {
    final winnerInRow = _isWinnerInRow();
    final winnerInColumn = _isWinnerInColumn();
    final winnerInDiagonal = _isWinnerInDiagonal();

    return winnerInRow || winnerInColumn || winnerInDiagonal;
  }

  int _convertRowInputToIndex(String input) {
    return int.parse(input);
  }

  int _convertColumnInputToIndex(String input) {
    int index;
    switch (input.toLowerCase()) {
      case 'a':
        {
          index = 0;
          break;
        }
      case 'b':
        {
          index = 1;
          break;
        }
      case 'c':
        {
          index = 2;
          break;
        }
      default:
        {
          throw FormatException('Wrong input for column.');
        }
    }
    return index;
  }

  bool _isWinnerInRow() {
    var isWinnerInRow = false;

    // TODO

    return isWinnerInRow;
  }

  bool _isWinnerInColumn() {
    var isWinnerInColumn = false;

    // TODO

    return isWinnerInColumn;
  }

  bool _isWinnerInDiagonal() {
    var isWinnerInDiagonal = false;

    // TODO

    return isWinnerInDiagonal;
  }
}
