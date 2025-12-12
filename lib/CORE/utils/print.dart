import 'dart:io';

int getConsoleWidth() {
  try {
    return stdout.terminalColumns;
  } on StdoutException catch (e, s) {
    return 96;
  }
}

void printCenteredTitle(String title, {
  String fill = '=',
  String prefix = ' [ ',
  String suffix = ' ] ',
}) {
  final consoleWidth = getConsoleWidth();
  final titleLength = title.length + prefix.length + suffix.length;
  final totalRemainingSpace = consoleWidth - titleLength;
  final fillAfterLength = totalRemainingSpace ~/ 2;
  final fillBeforeLength = totalRemainingSpace - fillAfterLength;
  final startFiller = fill * (fillBeforeLength > 0 ? fillBeforeLength : 0);
  final endFiller = fill * (fillAfterLength > 0 ? fillAfterLength : 0);

  print('$startFiller$prefix$title$suffix$endFiller');
}

void printFillLine(String fill) {
  final consoleWidth = getConsoleWidth();
  final quantity = consoleWidth / fill.length;
  final line = fill * quantity.toInt();
  final remaining = fill.substring(0, consoleWidth - line.length);

  print('$line$remaining');
}
