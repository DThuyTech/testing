import 'package:display_tracking/shared/exception/base/app_exception.dart';

abstract class ExceptionMapper<T extends AppException> {
  T map(Object? exception);
}
