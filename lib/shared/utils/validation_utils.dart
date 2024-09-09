
class ValidationUtils {
  const ValidationUtils._();

  // static bool isValidPassword(String password) {
  //   if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$').hasMatch(password.trim())) return false;

  //   return true;
  // }

  // /// Check if a string is empty phone number.
  // /// Return true if it is not empty.
  // static bool isEmptyPhoneNumber(String phoneNumber) {
  //   if (phoneNumber.isEmpty) return false;

  //   return true;
  // }

  // /// Check if a string is valid phone number.
  // /// Return true if it is valid.
  // static bool isValidPhoneNumber(String phoneNumber) {
  //   if (!RegExp(r'^0{1}[0-9]{10}$').hasMatch(phoneNumber.trim())) return false;

  //   return true;
  // }

  // /// Check if a string is empty email.
  // /// Return true if it is valid.
  // static bool isEmptyEmail(String email) {
  //   if (email.isEmpty) return false;

  //   return true;
  // }

  // /// Check if a string is a valid email.
  // /// Return true if it is valid.
  // static bool isValidEmail(String email) {
  //   if (!RegExp(
  //     r'^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  //   ).hasMatch(email.trim())) {
  //     return false;
  //   }

  //   return true;
  // }

  // /// Check if a string is empty date time.
  // /// Return true if it is valid.
  // static bool isEmptyDateTime(String dateTime) {
  //   if (dateTime.isEmpty) return false;

  //   return true;
  // }

  // /// Check if a string is a valid date time.
  // /// Return true if it is valid.
  // static bool isValidDateTime(String dateTime) {
  //   if (!RegExp(
  //     r'^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$',
  //   ).hasMatch(dateTime)) {
  //     return false;
  //   }

  //   return true;
  // }

  // /// Check if a string is alphanumeric.
  // /// Return true if it is valid.
  // static bool isAlphanumeric(String text) {
  //   if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(text.trim())) return false;

  //   return true;
  // }

  // /// Check if string is link
  // /// Return true if it is valid
  // static bool isLink(String text) => Uri.parse(text).isAbsolute;

  // static String validateAddress({
  //   required String zipCode1,
  //   required String zipCode2,
  //   required String inputPrefecture,
  //   required String inputAddress,
  //   required List<PostalInformation> listPostalInformation,
  // }) {
  //   /// 入力値(都道府県+市区町村及び番地以降 後続のチェック処理のため全角数字は半角数字に変換)
  //   final target = '$inputPrefecture$inputAddress'.replaceAllMapped(
  //     RegExp(r'[０-９]'),
  //     (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) - 0xfee0),
  //   );

  //   var ret = '';
  //   var isExist = false;

  //   for (var data in listPostalInformation) {
  //     /// 都道府県を取り除いた住所
  //     final removedPrefectureAddress = target.replaceFirst(data.prefectureName, '');

  //     /// 都道府県を取り除いた住所からさらに市区町村を取り除いた住所
  //     final removedCityAddress = removedPrefectureAddress.replaceFirst(data.cityName, '');

  //     /// 例外パターンを含む町域(町域が「〇〇(市区町村名)の次に番地がくる場合」となるパターン用の対応)
  //     final isContainExceptionWord = [
  //       '次',
  //       '番地',
  //       '場合',
  //     ].every((word) => data.townName.contains(word));

  //     /// 例外パターンを含む町域(町域が「〇〇村一円」となるパターン用の対応)
  //     final isContainExceptionWord2 = ['村', '一円'].every((word) => data.townName.contains(word));

  //     /// 例外パターンを含む町域(町域に「大字」「字」を含むパターン用の対応)※十文字等の町域も含まれてしまうのは問題無し
  //     final isContainExceptionWord3 = ['大字', '字'].any((word) => removedCityAddress.contains(word));

  //     /// 例外パターンを含む町域(町域が「〇〇町一円」となるパターン用の対応)
  //     final isContainExceptionWord4 = ['町', '一円'].every((word) => data.townName.contains(word));

  //     /// 例外パターンを含む町域(町域が「〇〇地割〜〇〇地割」となるパターン用の対応)
  //     final isContainExceptionWord5 = ['地割', '～'].every((word) => data.townName.contains(word));

  //     /// 例外パターンを含む町域(町域が「〇〇地割、〇〇地割」となるパターン用の対応)
  //     final isContainExceptionWord6 = ['地割', '、'].every((word) => data.townName.contains(word));

  //     /// 町域の「の」を「ノ」に変換(DB上は「浪の上町」だが申請書上では「浪ノ上町」の場合の対応※「あけぼノ」のような入力が通るようになるのは問題無し)
  //     final convertedTownName = data.townName.replaceAll('の', 'ノ');

  //     if (target.contains(data.prefectureName) &&
  //         removedPrefectureAddress.contains(data.cityName) &&
  //         (removedCityAddress.contains(data.townName) ||
  //             removedCityAddress.contains(convertedTownName) ||
  //             isContainExceptionWord ||
  //             isContainExceptionWord2 ||
  //             isContainExceptionWord3 ||
  //             isContainExceptionWord4 ||
  //             isContainExceptionWord5 ||
  //             isContainExceptionWord6)) {
  //       isExist = true;
  //       ret = '';

  //       /// 都道府県を切り出した住所内で市区町村のindexを取得(正しい住所なら必ず0になる)
  //       final cityIndex = removedPrefectureAddress.indexOf(data.cityName);

  //       /// 市区町村のindexチェック
  //       if (cityIndex != 0) {
  //         ret = '住所が正しくありません。\n・都道府県・市区町村・町域の並びを確認してください。';
  //       }

  //       /// 特定町域(町域は一致するが番地チェックは対象外とするパターン対応)
  //       final isContainExceptionTownName = [
  //         '丁目',
  //         '父島',
  //         '無番地',
  //         '福富',
  //       ].any((word) => data.townName.contains(word));

  //       /// 町域が「市谷本村町5-1」のような番地情報を含むレコードが存在するためその場合は番地入力チェック対象外とする
  //       final isContainNumbersInTownName = RegExp(r'[0-9]').hasMatch(data.townName);
  //       if (!isContainExceptionTownName && !isContainNumbersInTownName) {
  //         final other = target
  //             .replaceAll(data.prefectureName, '')
  //             .replaceAll(data.cityName, '')
  //             .replaceAll(data.townName, '');

  //         /// 番地入力チェック
  //         final isContainNumbers = RegExp(r'[0-9]').hasMatch(other);
  //         final isContainKanjiNumbers = RegExp(r'/[無〇一二三四五六七八九]/').hasMatch(other);
  //         final isContainAddressInfoString = RegExp(r'/[丁番東西南北ー\-]/').hasMatch(other);
  //         final isContainExceptionNumber = [
  //           '番地不詳',
  //           '無番地',
  //           '番地無',
  //           '番地なし',
  //         ].any((word) => other.contains(word));
  //         if (!isContainNumbers && !isContainExceptionNumber) {
  //           if (!isContainKanjiNumbers || (isContainKanjiNumbers && !isContainAddressInfoString)) {
  //             if (ret.isEmpty) {
  //               ret = '住所が正しくありません。';
  //             }
  //             ret += '\n・番地情報が入力されていません。';
  //           }
  //         }
  //       }
  //     }
  //   }

  //   if (!isExist) {
  //     ret = '郵便番号もしくは住所が正しくありません。\n住所検索ボタンから住所を検索していただき、正しい住所の入力をお願いいたします。';
  //   }

  //   return ret;
  
}
