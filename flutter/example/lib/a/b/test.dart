import 'dart:async';
import 'dart:convert';

import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> tryCatchModule() async {
  try {
    throw StateError('try catch');
  } catch (error, stackTrace) {
    await Sentry.captureException(error, stackTrace: stackTrace);
  }
}