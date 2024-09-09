// ignore_for_file: constant_identifier_names

class ResponseMessage {
  static const String SUCCESS = 'Success'; 
  static const String NO_CONTENT = 'No content';
  static const String BAD_REQUEST = 'API rejected request'; 
  static const String UNAUTORISED = 'user is not authorised';
  static const String FORBIDDEN = 'failure, API rejected request';
  static const String INTERNAL_SERVER_ERROR = 'crash in server side';
  static const String NOT_FOUND = 'crash in server side';

  // local status code
  static const String CONNECT_TIMEOUT = 'Timeout';
  static const String CANCEL = 'Quit';
  static const String RECIEVE_TIMEOUT = 'Recieve timeout';
  static const String SEND_TIMEOUT = 'Send timeout';
  static const String CACHE_ERROR = 'Cache error';
  static const String NO_INTERNET_CONNECTION = 'Poor internet connection';
  static const String DEFAULT = 'Error';
}