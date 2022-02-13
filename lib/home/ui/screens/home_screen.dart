import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_app/common/router/router.gr.dart';
import 'package:trading_app/common/theme/app_theme.dart';
import 'package:trading_app/common/ui/widgets/blur_filter.dart';
import 'package:trading_app/generated/app_strings.g.dart';
import 'package:trading_app/generated/assets.gen.dart';
import 'package:trading_app/home/ui/widgets/bar_item.dart';

class _Item {
  final String title;
  final String imagePath;
  final PageRouteInfo<void> route;

  _Item(
    this.title,
    this.imagePath,
    this.route,
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = [
    _Item(
      LocaleKeys.home_tabs_dashboard.tr(),
      Assets.svg.home.dashboard.path,
      const HotRoute(),
    ),
    _Item(
      LocaleKeys.home_tabs_discover.tr(),
      Assets.svg.home.discover.path,
      EmptyRoute(),
    ),
    _Item(
      LocaleKeys.home_tabs_watch.tr(),
      Assets.svg.home.watch.path,
      EmptyRoute(),
    ),
    _Item(
      LocaleKeys.home_tabs_inbox.tr(),
      Assets.svg.home.inbox.path,
      EmptyRoute(),
    ),
    _Item(
      LocaleKeys.home_tabs_profile.tr(),
      Assets.svg.home.profile.path,
      EmptyRoute(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      lazyLoad: false,
      extendBodyBehindAppBar: true,
      routes: items.map((item) => item.route).toList(),
      builder: (context, widget, animation) {
        return Stack(
          children: [
            widget,
            Align(
              alignment: Alignment.bottomCenter,
              child: _BottomBarWidget(
                items: items,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _BottomBarWidget extends StatelessWidget {
  const _BottomBarWidget({
    required this.items,
    Key? key,
  }) : super(key: key);

  final List<_Item> items;

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;

    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24.w),
        topRight: Radius.circular(24.w),
      ),
      child: Stack(
        children: [
          Container(
            color: colors.black.withOpacity(0.9),
            child: BlurFilter(
              sigmaX: 10,
              sigmaY: 10,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                child: SafeArea(
                  top: false,
                  child: SizedBox(
                    height: 56.h,
                  ),
                ),
              ),
            ),
          ),
          BlurFilter(
            sigmaX: 60,
            sigmaY: 60,
            child: Container(
              width: double.infinity,
              color: Colors.transparent,
              child: SafeArea(
                top: false,
                child: Container(
                  height: 56.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  transform: Matrix4.translationValues(
                    -40.w + (context.tabsRouter.activeIndex * (ScreenUtil().screenWidth / items.length.toDouble())),
                    60.h,
                    0,
                  ),
                  child: Row(
                    children: [
                      _ActiveglowWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
            ),
            child: SafeArea(
              top: false,
              child: SizedBox(
                height: 56.h,
                child: Row(
                  children: List.generate(
                    items.length,
                    (index) => Expanded(
                      child: BarItemWidget(
                        title: items[index].title,
                        imagePath: items[index].imagePath,
                        selected: context.tabsRouter.activeIndex == index,
                        onSelected: () => context.tabsRouter.setActiveIndex(index),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ActiveglowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gradient = AppTheme.of(context).gradient;

    return SizedBox(
      width: 142.w,
      height: 48.h,
      child: ClipOval(
        child: Container(
          decoration: BoxDecoration(
            gradient: gradient.button,
          ),
        ),
      ),
    );
  }
}
