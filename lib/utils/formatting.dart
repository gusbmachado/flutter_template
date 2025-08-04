import 'dart:math';

bool hasValue(dynamic data) {
  return data != null && data is! num && data.toString().isNotEmpty;
}

void noop() {}

double round(double number, [int places = 0]) {
  double factor = pow(10, places).toDouble();
  return (number * factor).round() / factor;
}

String normalizeText(String text) {
  return text.replaceAll(RegExp(r'[\u0300-\u036f]'), '').toLowerCase();
}

bool validateSpecialChar(String str) {
  return RegExp(r'^[a-zA-Z0-9-.,_/:?&=]*$').hasMatch(str);
}

String fixMalformedJsonString(String malformedJson) {
  // This regex attempts to find unquoted keys that are followed by a colon.
  // It's a simplification and might not handle all edge cases.
  // The '(?<!")' and '(?<!\")' are negative lookbehinds to ensure the character before the key isn't a quote.
  // The '(?<!\\")' is for escaped quotes.
  final regex = RegExp(r'([{,]\s*)([a-zA-Z_][a-zA-Z0-9_]*)\s*:', multiLine: true);
  return malformedJson.replaceAllMapped(regex, (match) {
    return '${match.group(1)}"${match.group(2)}":';
  });
}

String getSubstring(String str, String type, String ref, [String? ref2]) {
  if (type == 'suffix') {
    return str.substring(str.indexOf(ref) + 1, str.length);
  } else if (type == 'prefix') {
    return str.substring(0, str.indexOf(ref));
  } else if (type == 'infix' && ref2 != null) {
    return str.substring(str.indexOf(ref) + 1, str.indexOf(ref2));
  } 
  return str;
}

String truncateWithEllipsis(String text, int maxLength) {
  if (maxLength < 3 || text.length <= maxLength) {
    return text;
  }

  return '${text.substring(0, maxLength - 3)}...';
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}"; // .toLowerCase()
  }
}

String textFormat(String text) {
  return text.capitalize().replaceAllMapped(RegExp(r'([a-z])([A-Z])'), (match) => '${match.group(1)} ${match.group(2)}'); // .replaceFirst(RegExp(r'^\w+\s'), '');
}

bool listElementIs<T>(List l) {
  if (l.isEmpty) return true;
  try {
    if (l[0] is T) return true; // only try to access to check element
  } catch (e) {
    return false;
  }
  return false;
}

String convertSectoDay(int n) {
  final day = n ~/ (24 * 3600);
  n = n % (24 * 3600);
  final hour = n ~/ 3600;
  n %= 3600;
  final minutes = n ~/ 60;
  n %= 60;
  final seconds = n;
   
  return '${day.toStringAsFixed(0)} D ${hour.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
}

bool isStringArrayValid(List<String> list, int expectedLength) {
  if (list.isEmpty || list.length != expectedLength) return false;
  var result = list.any((l) => l.isEmpty);
  return !result;
}

List<String> formatBandwidth(double currentRate) {
  if (currentRate < 1000) {
    return [currentRate.toInt().toString(), 'Kb/s'];
  } else if (currentRate >= 1000 && currentRate < 1000 * 1000) {
    final double mbps = currentRate / 1000;
    return [mbps.toStringAsFixed(2), 'Mb/s'];
  } else {
    final double gbps = currentRate / (1000 * 1000);
    return [gbps.toStringAsFixed(2), 'Gb/s'];
  }
}
