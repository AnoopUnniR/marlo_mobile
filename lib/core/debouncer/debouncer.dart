import 'package:flutter/foundation.dart';
import 'dart:async';

class Debouncer {
  Timer? _timer;


  run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(const Duration(milliseconds: 1000), action);
  }
}