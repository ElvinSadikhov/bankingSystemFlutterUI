String converter(String origString) {
  double amount = double.parse(origString);
  String finalFormat = "";

  if (amount < 0) {
    finalFormat = '-';
    amount *= -1;
    origString = origString.substring(1, origString.length);
  } else if (amount > 0) {
    finalFormat = '+';
  }

  finalFormat += "\$";

  int end =
      origString.contains(".") ? origString.indexOf('.') : origString.length;

  for (int index = 0; index < end; index++) {
    finalFormat += origString[index];
    if (end - index - 1 != 0 && (end - index - 1) % 3 == 0) finalFormat += ',';
  }

  if (end != origString.length) {
    finalFormat +=
        ".${origString.substring(origString.indexOf('.') + 1, origString.length)}";
  }

  return finalFormat;
}
