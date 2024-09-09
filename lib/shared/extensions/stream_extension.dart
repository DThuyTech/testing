import 'dart:async';

import 'package:display_tracking/shared/helper/stream/disposable.dart';
import 'package:display_tracking/shared/helper/stream/dispose_bag.dart';
import 'package:flutter/material.dart';

extension StreamSubscriptionExtensions<T> on StreamSubscription {
  void disposeBy(DisposeBag disposeBag) {
    disposeBag.addDisposable(this);
  }
}

extension StreamControllerExtensions<T> on StreamController {
  void disposeBy(DisposeBag disposeBag) {
    disposeBag.addDisposable(this);
  }
}

extension ChangeNotifierExtensions on ChangeNotifier {
  void disposeBy(DisposeBag disposeBag) {
    disposeBag.addDisposable(this);
  }
}

extension DisposableExtensions on Disposable {
  void disposeBy(DisposeBag disposeBag) {
    disposeBag.addDisposable(this);
  }
}
