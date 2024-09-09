import 'dart:math';


class AppUtils {
  // static int getOneStopYear() {
  //   final nowOneStopYear = DateTime.now();

  //   // 1月10日までは前年にする
  //   if (nowOneStopYear.month == 1 && nowOneStopYear.day <= 10) {
  //     return nowOneStopYear.year - 1;
  //   }
  //   return nowOneStopYear.year;
  // }

  // static String convertDateFormat(String targetDate) {
  //   if (targetDate.contains('年')) {
  //     return targetDate;
  //   }

  //   var year = 0;
  //   var month = 0;
  //   var day = 0;
  //   if (targetDate.contains('/')) {
  //     final splitTargetDate = targetDate.split('/');
  //     year = int.parse(splitTargetDate[0]);
  //     month = int.parse(splitTargetDate[1]);
  //     day = int.parse(splitTargetDate[2]);
  //   } else {
  //     final date = DateTime.parse(targetDate);
  //     year = date.year;
  //     month = date.month;
  //     day = date.day;
  //   }

  //   return '$year年$month月$day日';
  // }

  static String getNonce() {
    return int.parse(Random.secure().nextDouble().toString().substring(2))
        .toRadixString(32);
  }
}
