import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_app/common/theme/app_theme.dart';
import 'package:trading_app/common/ui/widgets/blur_filter.dart';
import 'package:trading_app/generated/app_strings.g.dart';
import 'package:trading_app/generated/assets.gen.dart';
import 'package:trading_app/hot/ui/widgets/back_soon.dart';
import 'package:trading_app/hot/ui/widgets/header.dart';
import 'package:trading_app/hot/ui/widgets/playlist_card.dart';

class HotScreen extends StatefulWidget {
  const HotScreen({Key? key}) : super(key: key);

  @override
  State<HotScreen> createState() => _HotScreenState();
}

class _HotScreenState extends State<HotScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Stack(
          children: const [
            _ContentWidget(),
            _AppBarWidget(),
          ],
        ),
      ),
    );
  }
}

class _AppBarWidget extends StatelessWidget {
  const _AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;

    return BlurFilter(
      sigmaX: 10,
      sigmaY: 10,
      child: Wrap(
        children: [
          Container(
            color: colors.black.withOpacity(0.8),
            child: SafeArea(
              bottom: false,
              child: Container(),
            ),
          ),
        ],
      ),
    );
  }
}

class _ContentWidget extends StatelessWidget {
  const _ContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                SafeArea(
                  bottom: false,
                  child: Container(),
                ),
                HeaderWidget(
                  title: LocaleKeys.dashboard_title.tr(),
                ),
                SizedBox(
                  height: 32.h,
                ),
                PlaylistcardWidget(
                  title: 'Smash Stockpile',
                  total: 30,
                  current: 15,
                  progress: 50,
                  color: colors.sunGold400,
                  imagePath: Assets.images.dashboard.content1.path,
                ),
                SizedBox(
                  height: 32.h,
                ),
                PlaylistcardWidget(
                  title: 'FGC Rumble',
                  total: 18,
                  current: 0,
                  progress: 0,
                  color: colors.purple500,
                  imagePath: Assets.images.dashboard.content2.path,
                ),
                SizedBox(
                  height: 32.h,
                ),
                PlaylistcardWidget(
                  title: 'Valorant Volume',
                  total: 21,
                  current: 21,
                  progress: 100,
                  color: colors.red500,
                  imagePath: Assets.images.dashboard.content3.path,
                ),
                SizedBox(
                  height: 46.h,
                ),
                const BackSoonWidget(),
                SizedBox(
                  height: MediaQuery.of(context).padding.bottom + 70.h,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
