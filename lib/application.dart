import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:trading_app/common/router/router.gr.dart';
import 'package:trading_app/common/theme/app_theme.dart';
import 'package:trading_app/common/ui/widgets/custom_scroll_bahaviour.dart';

class Application extends StatelessWidget {
  const Application(this.router, {Key? key}) : super(key: key);

  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.of(context).themeData,
      debugShowCheckedModeBanner: false,
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: CustomScrollBehavior(),
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
            child: child ?? Container(),
          ),
        );
      },
    );
  }
}
