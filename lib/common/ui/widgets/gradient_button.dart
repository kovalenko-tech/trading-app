import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trading_app/common/theme/app_theme.dart';
import 'package:trading_app/common/ui/widgets/gradient_well.dart';

class GradientButtonWidget extends StatelessWidget {
  const GradientButtonWidget({
    required this.title,
    this.imagePath,
    Key? key,
  }) : super(key: key);

  final String title;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    final gradient = AppTheme.of(context).gradient;

    return GradientWell(
      radius: 26.r,
      strokeWidth: 0.5.r,
      gradient: gradient.border,
      onPressed: () {},
      child: Container(
        height: 56.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            26.r,
          ),
          gradient: gradient.button,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (imagePath != null) ...[
              SvgPicture.asset(
                imagePath!,
              ),
              SizedBox(
                width: 8.w,
              ),
            ],
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppTheme.of(context).textTheme.button,
            ),
          ],
        ),
      ),
    );
  }
}
