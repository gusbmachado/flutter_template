bool hasValue(dynamic data) {
  return data != null && data is! num && data.toString().isNotEmpty;
}

void noop() {}

double round(double number, [int places = 0]) {
  double factor = Math.pow(10, places);
  return (number * factor + double.minPositive).round() / factor;
}

String normalizeText(String text) {
  return text.replaceAll(RegExp(r'[\u0300-\u036f]'), '').toLowerCase();
}

bool validateSpecialChar(String str) {
  return RegExp(r'^[a-zA-Z0-9-.,_/:?&=]*$').hasMatch(str);
}

