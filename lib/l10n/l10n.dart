import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('zh'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'zh':
        return 'CH';
      default:
        return '🇺🇸';
    }
  }
}
