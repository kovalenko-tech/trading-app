import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trading_app/common/theme/app_theme.dart';

class BarItemWidget extends StatefulWidget {
  const BarItemWidget({
    required this.title,
    required this.imagePath,
    this.selected = false,
    this.onSelected,
    Key? key,
  }) : super(key: key);

  final String title;
  final bool selected;
  final String imagePath;
  final VoidCallback? onSelected;

  @override
  State<BarItemWidget> createState() => _BarItemWidgetState();
}

class _BarItemWidgetState extends State<BarItemWidget> {
  @override
  Widget build(BuildContext context) {
    final textTheme = AppTheme.of(context).textTheme;
    final colors = AppTheme.of(context).colors;

    return GestureDetector(
      onTap: widget.onSelected,
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.imagePath,
              color: widget.selected ? colors.sunGold400 : colors.base500,
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 100),
              child: widget.selected
                  ? Padding(
                      padding: EdgeInsets.only(
                        top: 4.h,
                      ),
                      child: Text(
                        widget.title,
                        style: textTheme.caption2,
                      ),
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
