import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_app/common/theme/app_theme.dart';
import 'package:trading_app/common/ui/widgets/blur_filter.dart';
import 'package:trading_app/common/ui/widgets/gradient_text.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final gradient = AppTheme.of(context).gradient;
    final textTheme = AppTheme.of(context).textTheme;

    final array = title.split(' ');
    final lastWord = array.removeLast();
    final firstPart = array.join(' ');

    return Wrap(
      spacing: 4.w,
      children: [
        GradientText(
          firstPart,
          style: textTheme.largeTitle,
          gradient: gradient.headerTitle,
        ),
        Stack(
          children: [
            BlurFilter(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 4.h,
                ),
                child: Opacity(
                  opacity: 0.5,
                  child: Text(
                    lastWord,
                    style: textTheme.largeTitle,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 6.w,
              ),
              child: Text(
                lastWord,
                style: textTheme.largeTitle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
