import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trading_app/home/home.dart';
import 'package:trading_app/hot/hot.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(
      page: HomeScreen,
      initial: true,
      children: [
        AutoRoute<void>(
          page: HotScreen,
          initial: true,
        ),
        AutoRoute<void>(
          name: 'EmptyRoute',
          page: Scaffold,
          initial: true,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
