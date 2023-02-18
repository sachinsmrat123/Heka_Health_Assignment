import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heka_health_assignment/app/data/theme/app_colors.dart';
import 'package:heka_health_assignment/app/data/values/fonts.dart';
import 'package:heka_health_assignment/app/data/values/strings.dart';
import 'package:heka_health_assignment/app/widgets/top_grid_list.dart';
import '../../../data/values/Images.dart';
import '../../../widgets/app_bar_widget.dart';
import '../controllers/safety_training_controller.dart';

class SafetyTrainingView extends GetView<SafetyTrainingController> {
  const SafetyTrainingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainWidget(),
      bottomSheet: bottomBar(),
    );
  }

  Widget mainWidget() {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarWidget(),
          Expanded(
            child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: const Text(
                        "WHAT WE DO",
                        style: TextStyle(
                            color: AppColors.tile125,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    TopGridList(
                      data: controller.imageData,
                      textData: controller.topGridData,
                      height: controller.gridImageHeightList,
                      width: controller.gridImageWidthList,
                      pointer: 2,
                    ),
                    befitTile(),
                    SizedBox(
                      height: 10.h,
                    ),
                    bulletPointWidget(Strings.promotesAHealthy),
                    bulletPointWidget(Strings.enhance),
                    bulletPointWidget(Strings.betterEquipped),
                    bulletPointWidget(Strings.ensureComplies),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w),
                      child: Text(
                        Strings.whyChooseUs,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                            color: AppColors.tile125),
                      ),
                    ),
                    bulletPointWidget(Strings.trainAnyWhere),
                    bulletPointWidget(Strings.iso),
                    bulletPointWidget(Strings.recommended),
                    bulletPointWidget(Strings.getCertified),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: Image.asset(
                        Images.safety_image,
                        height: 179.72.h,
                        width: Get.width,
                       fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    bottomSafetyRow(),
                    SizedBox(
                      height: 60.h,
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }

  Widget bottomBar() {
    return Container(
      height: 50.h,
      color: AppColors.white,
      padding: EdgeInsets.only(left: 24.w, right: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Images.info,
            height: 24.h,
            width: 24.w,
          ),
          SvgPicture.asset(
            Images.search,
            height: 24.h,
            width: 24.w,
          ),
          SvgPicture.asset(
            Images.home,
            height: 24.h,
            width: 24.w,
          ),
          GestureDetector(
            onTap: () => Get.back(),
            child: SvgPicture.asset(
              Images.change_history,
              height: 24.h,
              width: 24.w,
            ),
          )
        ],
      ),
    );
  }

  Widget befitTile() {
    return Padding(
      padding: EdgeInsets.only(top: 33.5.h,left: 20.w,right: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Strings.benefitsForYou,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                color: AppColors.tile125),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: AppColors.goldLite),
            child: Text(
              Strings.enquireNow,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: AppColors.white),
            ),
          )
        ],
      ),
    );
  }

  Widget bulletPointWidget(String textData) {
    return Padding(
      padding: EdgeInsets.only(top: 12.0.h,left: 20.w,right: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 4.h,
            width: 4.w,
            decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            textData,
            style: TextStyle(
                color: AppColors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }

  Widget bottomSafetyRow() {
    return Container(
      color: AppColors.gold125,
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 70.h),
            child: Text(
              Strings.safetyAtWork,
              maxLines: 2,
              style: TextStyle(
                  fontFamily: Fonts.inter,
                  fontSize: 14.51.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black),
            ),
          ),
          bottomImageWidget(Images.healthCare, Strings.health),
          bottomImageWidget(Images.regulation, Strings.regulation),
          bottomImageWidget(Images.helmet, Strings.protection),
          bottomImageWidget(Images.warning, Strings.hazardAnalysis),
        ],
      ),
    );
  }

  Widget bottomImageWidget(String imageData, String textData) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.0.h),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20.0)),
            child: Image.asset(
              imageData,
              height: 29.79.h,
              width: 29.79.w,
            )),
        SizedBox(
          height: 5.96.h,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 50.w),
          child: Text(
            textData,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 8.29.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.black),
          ),
        )
      ],
    );
  }
}
