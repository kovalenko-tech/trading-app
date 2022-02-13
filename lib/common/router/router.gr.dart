// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/gestures.dart' as _i5;
import 'package:flutter/material.dart' as _i3;

import '../../home/home.dart' as _i1;
import '../../hot/hot.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<void>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    HotRoute.name: (routeData) {
      return _i4.MaterialPageX<void>(
          routeData: routeData, child: const _i2.HotScreen());
    },
    EmptyRoute.name: (routeData) {
      final args = routeData.argsAs<EmptyRouteArgs>(
          orElse: () => const EmptyRouteArgs());
      return _i4.MaterialPageX<void>(
          routeData: routeData,
          child: _i3.Scaffold(
              key: args.key,
              appBar: args.appBar,
              body: args.body,
              floatingActionButton: args.floatingActionButton,
              floatingActionButtonLocation: args.floatingActionButtonLocation,
              floatingActionButtonAnimator: args.floatingActionButtonAnimator,
              persistentFooterButtons: args.persistentFooterButtons,
              drawer: args.drawer,
              onDrawerChanged: args.onDrawerChanged,
              endDrawer: args.endDrawer,
              onEndDrawerChanged: args.onEndDrawerChanged,
              bottomNavigationBar: args.bottomNavigationBar,
              bottomSheet: args.bottomSheet,
              backgroundColor: args.backgroundColor,
              resizeToAvoidBottomInset: args.resizeToAvoidBottomInset,
              primary: args.primary,
              drawerDragStartBehavior: args.drawerDragStartBehavior,
              extendBody: args.extendBody,
              extendBodyBehindAppBar: args.extendBodyBehindAppBar,
              drawerScrimColor: args.drawerScrimColor,
              drawerEdgeDragWidth: args.drawerEdgeDragWidth,
              drawerEnableOpenDragGesture: args.drawerEnableOpenDragGesture,
              endDrawerEnableOpenDragGesture:
                  args.endDrawerEnableOpenDragGesture,
              restorationId: args.restorationId));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeRoute.name, path: '/', children: [
          _i4.RouteConfig(HotRoute.name, path: '', parent: HomeRoute.name),
          _i4.RouteConfig(EmptyRoute.name, path: '', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.HotScreen]
class HotRoute extends _i4.PageRouteInfo<void> {
  const HotRoute() : super(HotRoute.name, path: '');

  static const String name = 'HotRoute';
}

/// generated route for
/// [_i3.Scaffold]
class EmptyRoute extends _i4.PageRouteInfo<EmptyRouteArgs> {
  EmptyRoute(
      {_i3.Key? key,
      _i3.PreferredSizeWidget? appBar,
      _i3.Widget? body,
      _i3.Widget? floatingActionButton,
      _i3.FloatingActionButtonLocation? floatingActionButtonLocation,
      _i3.FloatingActionButtonAnimator? floatingActionButtonAnimator,
      List<_i3.Widget>? persistentFooterButtons,
      _i3.Widget? drawer,
      void Function(bool)? onDrawerChanged,
      _i3.Widget? endDrawer,
      void Function(bool)? onEndDrawerChanged,
      _i3.Widget? bottomNavigationBar,
      _i3.Widget? bottomSheet,
      _i3.Color? backgroundColor,
      bool? resizeToAvoidBottomInset,
      bool primary = true,
      _i5.DragStartBehavior drawerDragStartBehavior =
          _i5.DragStartBehavior.start,
      bool extendBody = false,
      bool extendBodyBehindAppBar = false,
      _i3.Color? drawerScrimColor,
      double? drawerEdgeDragWidth,
      bool drawerEnableOpenDragGesture = true,
      bool endDrawerEnableOpenDragGesture = true,
      String? restorationId})
      : super(EmptyRoute.name,
            path: '',
            args: EmptyRouteArgs(
                key: key,
                appBar: appBar,
                body: body,
                floatingActionButton: floatingActionButton,
                floatingActionButtonLocation: floatingActionButtonLocation,
                floatingActionButtonAnimator: floatingActionButtonAnimator,
                persistentFooterButtons: persistentFooterButtons,
                drawer: drawer,
                onDrawerChanged: onDrawerChanged,
                endDrawer: endDrawer,
                onEndDrawerChanged: onEndDrawerChanged,
                bottomNavigationBar: bottomNavigationBar,
                bottomSheet: bottomSheet,
                backgroundColor: backgroundColor,
                resizeToAvoidBottomInset: resizeToAvoidBottomInset,
                primary: primary,
                drawerDragStartBehavior: drawerDragStartBehavior,
                extendBody: extendBody,
                extendBodyBehindAppBar: extendBodyBehindAppBar,
                drawerScrimColor: drawerScrimColor,
                drawerEdgeDragWidth: drawerEdgeDragWidth,
                drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
                endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
                restorationId: restorationId));

  static const String name = 'EmptyRoute';
}

class EmptyRouteArgs {
  const EmptyRouteArgs(
      {this.key,
      this.appBar,
      this.body,
      this.floatingActionButton,
      this.floatingActionButtonLocation,
      this.floatingActionButtonAnimator,
      this.persistentFooterButtons,
      this.drawer,
      this.onDrawerChanged,
      this.endDrawer,
      this.onEndDrawerChanged,
      this.bottomNavigationBar,
      this.bottomSheet,
      this.backgroundColor,
      this.resizeToAvoidBottomInset,
      this.primary = true,
      this.drawerDragStartBehavior = _i5.DragStartBehavior.start,
      this.extendBody = false,
      this.extendBodyBehindAppBar = false,
      this.drawerScrimColor,
      this.drawerEdgeDragWidth,
      this.drawerEnableOpenDragGesture = true,
      this.endDrawerEnableOpenDragGesture = true,
      this.restorationId});

  final _i3.Key? key;

  final _i3.PreferredSizeWidget? appBar;

  final _i3.Widget? body;

  final _i3.Widget? floatingActionButton;

  final _i3.FloatingActionButtonLocation? floatingActionButtonLocation;

  final _i3.FloatingActionButtonAnimator? floatingActionButtonAnimator;

  final List<_i3.Widget>? persistentFooterButtons;

  final _i3.Widget? drawer;

  final void Function(bool)? onDrawerChanged;

  final _i3.Widget? endDrawer;

  final void Function(bool)? onEndDrawerChanged;

  final _i3.Widget? bottomNavigationBar;

  final _i3.Widget? bottomSheet;

  final _i3.Color? backgroundColor;

  final bool? resizeToAvoidBottomInset;

  final bool primary;

  final _i5.DragStartBehavior drawerDragStartBehavior;

  final bool extendBody;

  final bool extendBodyBehindAppBar;

  final _i3.Color? drawerScrimColor;

  final double? drawerEdgeDragWidth;

  final bool drawerEnableOpenDragGesture;

  final bool endDrawerEnableOpenDragGesture;

  final String? restorationId;

  @override
  String toString() {
    return 'EmptyRouteArgs{key: $key, appBar: $appBar, body: $body, floatingActionButton: $floatingActionButton, floatingActionButtonLocation: $floatingActionButtonLocation, floatingActionButtonAnimator: $floatingActionButtonAnimator, persistentFooterButtons: $persistentFooterButtons, drawer: $drawer, onDrawerChanged: $onDrawerChanged, endDrawer: $endDrawer, onEndDrawerChanged: $onEndDrawerChanged, bottomNavigationBar: $bottomNavigationBar, bottomSheet: $bottomSheet, backgroundColor: $backgroundColor, resizeToAvoidBottomInset: $resizeToAvoidBottomInset, primary: $primary, drawerDragStartBehavior: $drawerDragStartBehavior, extendBody: $extendBody, extendBodyBehindAppBar: $extendBodyBehindAppBar, drawerScrimColor: $drawerScrimColor, drawerEdgeDragWidth: $drawerEdgeDragWidth, drawerEnableOpenDragGesture: $drawerEnableOpenDragGesture, endDrawerEnableOpenDragGesture: $endDrawerEnableOpenDragGesture, restorationId: $restorationId}';
  }
}
