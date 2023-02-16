import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heka_health_assignment/app/data/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageIndicator extends StatelessWidget {
  final bool isActive;
  final double height;
  final double width;
  final Color? activeColor;
  final Color? inActiveColor;
  final double margin;
  const PageIndicator(
      {Key? key,
        required this.isActive,
         this.height = 6.5,
         this.width = 6.5,
        this.activeColor  = AppColors.activeColor,
        this.inActiveColor = AppColors.inactiveColor,
        this.margin = 3.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: margin.w),
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        color: isActive ? activeColor : inActiveColor,
        borderRadius: const BorderRadius.all(Radius.circular(6.0)),
      ),
    );
  }
}