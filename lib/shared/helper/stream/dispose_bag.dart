import 'dart:async';

import 'package:display_tracking/shared/config/log_config.dart';
import 'package:display_tracking/shared/helper/stream/disposable.dart';
import 'package:display_tracking/shared/mixin/log_mixin.dart';
import 'package:flutter/material.dart';

class DisposeBag with LogMixin {
  static const _enableLogging = LogConfig.enableDisposeBagLog;
  final List<Object> _disposable = [];
  void addDisposable(Object disposable) {
    _disposable.add(disposable);
  }

  void dispose() {
    for (var disposable in _disposable) {
      if (disposable is StreamSubscription) {
        disposable.cancel();
        if (_enableLogging) {
          logD('Canceled $disposable');
        }
      } else if (disposable is StreamController) {
        disposable.close();
        if (_enableLogging) {
          logD('Closed $disposable');
        }
      } else if (disposable is ChangeNotifier) {
        disposable.dispose();
        if (_enableLogging) {
          logD('Disposed $disposable');
        }
      } else if (disposable is Disposable) {
        disposable.dispose();
      }
    }

    _disposable.clear();
  }
}
