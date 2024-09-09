import 'package:dartx/dartx.dart';

extension StringExtensions on String {
  bool equalsIgnoreCase(String secondString) => toLowerCase().contains(secondString.toLowerCase());

  /// English:
  /// Input 20241701
  /// Output 2024年17月01日
  ///
  /// Japanese:
  /// 入力 20241701
  /// 出力 2024年17月01日
  String formatDateNoSpaceToText() {
    if (length != 8) return this;

    final year = substring(0, 4);
    final month = substring(4, 6);
    final day = substring(6, 8);

    return '$year年$month月$day日';
  }

  /// English:
  /// Input: 20241701
  /// Output: 2024/17/01
  ///
  /// Japanese:
  /// 入力: 20241701
  /// 出力: 2024/17/01
  String formatDateNoSpaceToSlash() {
    if (length != 8) return this;

    final year = substring(0, 4);
    final month = substring(4, 6);
    final day = substring(6, 8);

    return '$year/$month/$day';
  }

  /// English:
  /// Input: 2024-17-01
  /// Output: 2024年17月01日
  ///
  /// Japanese:
  /// 入力: 2024-17-01
  /// 出力: 2024年17月01日
  String formatDateDashToText() {
    final receivedOn = split('-');

    final year = receivedOn[0];
    final month = receivedOn[1];
    final day = receivedOn[2];

    return '$year年$month月$day日';
  }

  /// English:
  /// Input: 8100042
  /// Output: 810-0042
  ///
  /// Japanese:
  /// 入力: 8100042
  /// 出力: 810-0042
  String formatZipCode() {
    return replaceAllMapped(RegExp(r'(\d{3})(\d{4})'), (match) => '${match[1]}-${match[2]}');
  }

  String toHex() => toUtf8().map((e) => e.toRadixString(16)).toList().join();
}
