import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:trading_app/common/injections/injections.dart';
import 'package:trading_app/common/router/router.gr.dart';

Future<void> bootstrap({
  required Widget Function(AppRouter router) builder,
  bool isDebug = kDebugMode,
}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    <DeviceOrientation>[DeviceOrientation.portraitUp],
  );

  configureDependencies();

  final logger = getIt<Logger>();
  final router = getIt<AppRouter>();

  const supportedLocales = <Locale>[
    Locale('en'),
  ];

  await runZonedGuarded(
    () async {
      runApp(
        DevicePreview(
          enabled: false,
          builder: (BuildContext context) => ScreenUtilInit(
            designSize: const Size(375, 667),
            builder: () => EasyLocalization(
              path: 'assets/translations',
              supportedLocales: supportedLocales,
              fallbackLocale: supportedLocales.first,
              child: builder(router),
            ),
          ),
        ),
      );
    },
    (Object error, StackTrace stackTrace) => logger.e(
      error.toString(),
      error,
      stackTrace,
    ),
  );
}
