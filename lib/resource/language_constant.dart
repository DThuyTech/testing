import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
// import 'package:/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


// ignore: constant_identifier_names
const String LAGUAGE_CODE = 'languageCode';

//languages code
// ignore: constant_identifier_names
const String ENGLISH = 'en';
// ignore: constant_identifier_names
const String CHINESE = 'zh';

Future<Locale> setLocale(String languageCode) async {
  const storage = FlutterSecureStorage();
  await storage.write(key: LAGUAGE_CODE, value: languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  const storage = FlutterSecureStorage();
  String? languageCode = await storage.read(key: LAGUAGE_CODE);
  return _locale(languageCode ?? 'en');
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case ENGLISH:
      return const Locale(ENGLISH, '');
    case CHINESE:
      return const Locale(CHINESE, "");
    default:
      return const Locale(ENGLISH, '');
  }
}

// AppLocalizations translation(BuildContext context) {
//   return AppLocalizations.of(context)!;
// }
