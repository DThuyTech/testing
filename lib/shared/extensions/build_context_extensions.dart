import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Size get screenSize => MediaQuery.sizeOf(this);
  EdgeInsets get screenPadding => MediaQuery.paddingOf(this);
  ThemeData get theme => Theme.of(this);
  NavigatorState get navigation => Navigator.of(this);
  ScaffoldMessengerState get snackbar => ScaffoldMessenger.of(this);
  FocusScopeNode get focusScope => FocusScope.of(this);
}
