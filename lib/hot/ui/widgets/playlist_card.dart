import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_app/common/theme/app_theme.dart';
import 'package:trading_app/common/ui/widgets/blur_filter.dart';
import 'package:trading_app/common/ui/widgets/gradient_well.dart';
import 'package:trading_app/common/ui/widgets/progress.dart';
import 'package:trading_app/generated/app_strings.g.dart';
import 'package:trading_app/generated/assets.gen.dart';

class PlaylistcardWidget extends StatelessWidget {
  const PlaylistcardWidget({
    required this.color,
    required this.current,
    required this.imagePath,
    required this.progress,
    required this.title,
    required this.total,
    Key? key,
  }) : super(key: key);

  final Color color;
  final int current;
  final String imagePath;
  final double progress;
  final String title;
  final int total;

  @override
  Widget build(BuildContext context) {
    final gradient = AppTheme.of(context).gradient;
    final colors = AppTheme.of(context).colors;

    return ClipRRect(
      borderRadius: BorderRadius.circular(32.r),
      child: Container(
        color: colors.white.withOpacity(0.07),
        child: GradientWell(
          strokeWidth: 1.r,
          radius: 32.r,
          gradient: gradient.gray,
          child: GradientWell(
            strokeWidth: 1.r,
            radius: 32.r,
            gradient: gradient.card(
              color: color,
            ),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                gradient: gradient.radial(
                  color: color,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.w),
                        child: Image.asset(
                          imagePath,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 20.w,
                        child: Container(
                          transform: Matrix4.translationValues(0, 32.w, 0),
                          child: const _PlayButton(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _InfoWidget(
                          title: title,
                          total: total,
                          current: current,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        ProgressWidget(
                          value: progress,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PlayButton extends StatelessWidget {
  const _PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;

    return ClipRRect(
      borderRadius: BorderRadius.circular(32.w),
      child: Stack(
        children: [
          BlurFilter(
            sigmaX: 20,
            sigmaY: 20,
            child: SizedBox(
              width: 64.w,
              height: 64.w,
            ),
          ),
          Container(
            width: 64.w,
            height: 64.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.w),
              color: colors.white.withOpacity(0.15),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 8),
                  blurRadius: 16,
                  color: colors.black.withOpacity(0.4),
                ),
              ],
              border: Border.all(
                width: 0.5.w,
                color: colors.white.withOpacity(0.3),
              ),
            ),
            padding: EdgeInsets.only(
              top: 4.h,
              left: 4.w,
            ),
            child: Center(
              child: Assets.svg.dashboard.play.svg(),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoWidget extends StatelessWidget {
  const _InfoWidget({
    required this.title,
    required this.current,
    required this.total,
    Key? key,
  }) : super(key: key);

  final int current;
  final String title;
  final int total;

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTheme.of(context).textTheme;
    final colors = AppTheme.of(context).colors;

    final available = total - current;

    final color = current == 0 ? colors.sunGold400 : colors.base200;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textTheme.title3,
        ),
        SizedBox(
          height: 2.h,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                LocaleKeys.dashboard_new_videos.plural(available),
                style: available == 0 ? textTheme.caption1.base200 : textTheme.caption1.sunGold400,
              ),
            ),
            Assets.svg.dashboard.count.svg(
              color: color,
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              LocaleKeys.dashboard_count.tr(
                namedArgs: {
                  'count': current.toString(),
                  'total': total.toString(),
                },
              ),
              style: textTheme.caption1.copyWith(
                color: color,
              ),
            )
          ],
        ),
      ],
    );
  }
}
