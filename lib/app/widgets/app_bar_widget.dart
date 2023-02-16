import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/values/strings.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heka_health_assignment/app/data/values/Images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget(
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w),
      child: SizedBox(
        height: 134.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              Images.hekaHealthyLogo,
              width: 107.72.w,
              height: 103.99.h,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(Images.homeFrame,
                        height: 40.94.h, width: 44.66.w),
                    SizedBox(
                      width: 26.37.w,
                    ),
                    SvgPicture.asset(Images.menu, height: 14.h, width: 19.w),
                  ],
                ),
                SizedBox(
                  height: 13.35.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(Strings.healtyYou,
                        style: TextStyle(
                            color: Colors.blueAccent.withOpacity(0.7))),
                    Container(
                      padding: const EdgeInsets.only(
                        bottom: 1.1, // space between underline and text
                      ),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                color: Colors.red, // Text colour here
                                width: 1.2, // Underline width
                              ))),
                      child: Row(
                        children: [
                          Text(
                            Strings.at,
                            style: TextStyle(
                                color: Colors.blueAccent.withOpacity(0.7)),
                          ),
                          const Text(
                            Strings.home,
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
