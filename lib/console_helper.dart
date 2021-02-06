import 'dart:convert';
import 'dart:io';

class ConsoleHelper {
  static String readInput() {
    return stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  }

  static void printGame(List<List<String>> placements) {
    print('    A   B   C   ');
    print(' -|---|---|---|-');
    print(
        '1 | ${placements[0][0]} | ${placements[0][1]} | ${placements[0][2]} |-');
    print(' -|---|---|---|-');
    print(
        '2 | ${placements[1][0]} | ${placements[1][1]} | ${placements[1][2]} |-');
    print(' -|---|---|---|-');
    print(
        '3 | ${placements[2][0]} | ${placements[2][1]} | ${placements[2][2]} |-');
    print(' -|---|---|---|-');
  }
}
