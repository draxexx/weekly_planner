import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';

@immutable

/// This class is used to initialize the application process
class ApplicationInitialize {
  /// Project basic required initialize
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _initialize();
  }

  /// This method is used to initialize the application process
  /// In this method, we shouldn't call longer processes
  /// This method is called before starting of the main widget
  static Future<void> _initialize() async {
    await EasyLocalization.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    // TODO: change tr_TR
    await initializeDateFormatting('tr_TR', null);

    /// Dependency initialize
    /// envied
  }
}
