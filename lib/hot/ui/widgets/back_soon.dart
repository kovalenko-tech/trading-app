import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_app/common/theme/app_theme.dart';
import 'package:trading_app/common/ui/widgets/gradient_button.dart';
import 'package:trading_app/generated/app_strings.g.dart';
import 'package:trading_app/generated/assets.gen.dart';

class BackSoonWidget extends StatelessWidget {
  const BackSoonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTheme.of(context).textTheme;

    return Column(
      children: [
        Assets.images.dashboard.check.image(),
        Text(
          LocaleKeys.dashboard_join_title.tr(),
          textAlign: TextAlign.center,
          style: textTheme.title2,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          LocaleKeys.dashboard_join_subtitle.tr(),
          textAlign: TextAlign.center,
          style: textTheme.footnote.base100,
        ),
        SizedBox(
          height: 40.h,
        ),
        GradientButtonWidget(
          imagePath: Assets.svg.dashboard.discord.path,
          title: LocaleKeys.dashboard_join_button.tr(),
        ),
      ],
    );
  }
}
