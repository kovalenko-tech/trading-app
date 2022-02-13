import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading_app/common/theme/app_theme.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({
    required this.value,
    Key? key,
  }) : super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;
    final gradient = AppTheme.of(context).gradient;

    return Stack(
      children: [
        Container(
          transform: Matrix4.translationValues(0, 6.h, 0),
          height: 4.h,
          decoration: BoxDecoration(
            color: colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(2.r),
          ),
          child: Row(
            children: [
              Expanded(
                flex: value.toInt(),
                child: Container(
                  decoration: BoxDecoration(
                    color: colors.sunGold400,
                    borderRadius: BorderRadius.circular(2.r),
                    gradient: value >= 100 ? null : gradient.progress,
                  ),
                ),
              ),
              Expanded(
                flex: 100 - value.toInt(),
                child: Container(),
              ),
            ],
          ),
        ),
        if (value > 0 && value < 100)
          Row(
            children: [
              Expanded(
                flex: value.toInt(),
                child: Container(),
              ),
              _ActiveglowWidget(),
              Expanded(
                flex: 100 - value.toInt(),
                child: Container(),
              ),
            ],
          )
      ],
    );
  }
}

class _ActiveglowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;

    return Container(
      transform: Matrix4.translationValues(2.w, 0, 0)..scale(0.8, 1),
      width: 20.w,
      height: 20.w,
      child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              colors.white.withOpacity(0.48),
              colors.white.withOpacity(0),
            ],
          ),
        ),
      ),
    );
  }
}
