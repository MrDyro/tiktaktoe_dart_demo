import 'package:tik_tak_toe/console_helper.dart';
import 'package:tik_tak_toe/tik_tak_toe.dart';

void main(List<String> arguments) {
  print('Willkommen bei TikTakToe!');
  print('Bitte mache deine Eingaben im folgenden Format: A1, B2, C3, etc.');

  do {
    TikTakToe();

    print('Willst du nochmal spielen?');
    final input = ConsoleHelper.readInput();
    if (input != 'ja') break;
  } while (true);

  print('Danke fürs Spielen!');
}
