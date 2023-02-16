import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heka_health_assignment/app/data/theme/app_colors.dart';
import 'package:heka_health_assignment/app/data/values/Images.dart';
import 'package:heka_health_assignment/app/widgets/app_bar_widget.dart';
import 'package:heka_health_assignment/app/widgets/top_grid_list.dart';

import '../../../data/theme/styles.dart';
import '../../../data/values/strings.dart';
import '../../../widgets/page_indicator.dart';
import '../controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({super.key});

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
        children: [
          const AppBarWidget(),
          Expanded(
            child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    TopGridList(
                      data: controller.imageList,
                      textData: controller.nameList,
                      height: controller.imageHeight,
                      width: controller.imageWidth,
                    ),
                    //topList(),
                    SizedBox(
                      height: 30.h,
                    ),
                    pageViewSlider(),
                    SizedBox(
                      height: 10.h,
                    ),
                    Obx(
                      () => Row(
                        mainAxisSize: MainAxisSize.min,
                        children: _buildPageIndicator(),
                      ),
                    ),
                    focusTextWidget(),
                    focusList(),
                    const SizedBox(height: 29),
                    stackView(),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20.0.w, top: 29.0.h, bottom: 20.h),
                          child: Text(
                            "OUR PARTNERS",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColors.black),
                          ),
                        )),
                    partnersList(),
                    SizedBox(
                      height: 60.h,
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }

  Widget pageViewSlider() {
    return SizedBox(
      height: 124.h,
      child: PageView.builder(
          itemCount: controller.leftImageList.length,
          onPageChanged: (int index) {
            controller.setPageIndex(index);
          },
          itemBuilder: (context, index) {
            return pageViewTile(
                pageHeaderData: controller.pageViewHeaderList[index],
                leftImage: controller.leftImageList[index],
                rightImage: controller.rightImageList[index],
                leftImageHeight: controller.leftImageHeightList[index],
                leftImageWidth: controller.leftImageWidthList[index],
                rightImageHeight: controller.rightImageHeightList[index],
                rightImageWidth: controller.rightImageWidthList[index],
                ambulanceTest: controller.ambulanceTest[index]);
          }),
    );
  }

  Widget pageViewTile(
      {String? pageHeaderData = "",
      String? leftImage = "",
      String? rightImage = "",
      double leftImageHeight = 10.0,
      double rightImageHeight = 0.0,
      double leftImageWidth = 0.0,
      double rightImageWidth = 0.0,
      int? ambulanceTest = 1}) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.tileColor, AppColors.black.withOpacity(0.2)])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 8.0.w),
              child: ambulanceTest == 2
                  ? Image.asset(
                      leftImage ?? "",
                      height: leftImageHeight.h,
                      width: leftImageWidth.w,
                    )
                  : SvgPicture.asset(
                      leftImage ?? "",
                      height: leftImageHeight.h,
                      width: leftImageWidth.w,
                    )),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pageHeaderData ?? "",
                  style: TextStyle(
                      fontFamily: "lota_goratesque",
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.83.sp)),
              Container(
                constraints: BoxConstraints(maxWidth: 90.06.w),
                child: Text(
                  "Course Taught By Certified Instrctors",
                  maxLines: 2,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 8.92.sp)),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 25.w, right: 25.w, top: 8.h, bottom: 8.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: AppColors.tile125),
                child: Text(
                  "No More",
                  style: Styles.addressStyle.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0.w),
            child: SvgPicture.asset(
              rightImage ?? "",
              height: rightImageHeight.h,
              width: rightImageWidth.w,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    var numPages = controller.leftImageList.length;
    List<Widget> list = [];
    if (numPages.isGreaterThan(1)) {
      for (int i = 0; i < (numPages); i++) {
        list.add(i == controller.currentIndex
            ? const PageIndicator(isActive: true)
            : const PageIndicator(isActive: false));
      }
    }
    return list;
  }

  focusTextWidget() {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: Container(
        constraints: BoxConstraints(maxWidth: 371.w),
        child: Text(
          Strings.ourFocus,
          style: TextStyle(
              fontFamily: "gotham",
              fontWeight: FontWeight.w700,
              fontSize: 15.sp,
              height: 1.3.sp),
        ),
      ),
    );
  }

  Widget focusList() {
    return Padding(
      padding: EdgeInsets.only(top: 22.25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          focusListTile(
              data: Images.heightest_level,
              textData: "Your highest level of independence"),
          focusListTile(
              data: Images.ensuring_cost_efficiencies,
              textData: "Ensuring Cost Efficiencies",
              ensuringTest: 2),
          focusListTile(
              data: Images.consistent_quality_out_comes,
              textData: "Consistent Quality Outcomes"),
          focusListTile(
              data: Images.reduced_hospitalization,
              textData: "Reduced Hospitalization")
        ],
      ),
    );
  }

  Widget focusListTile(
      {String? data = "", String? textData = "", int? ensuringTest = 1}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ensuringTest == 2
            ? Image.asset(data ?? "", height: 80.29.h, width: 80.29.w)
            : SvgPicture.asset(data ?? "", height: 80.29.h, width: 80.29.w),
        SizedBox(
          height: 9.4.h,
        ),
        Container(
            constraints: BoxConstraints(maxWidth: 88.w),
            child: Text(
              textData ?? "",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "inter",
                  fontWeight: FontWeight.w600,
                  fontSize: 10.sp),
            ))
      ],
    );
  }

  Widget stackView() {
    return Container(
      color: AppColors.tile125,
      padding: EdgeInsets.only(top: 29.92.h, bottom: 29.92.h),
      child: Container(

        alignment: Alignment.center,
        // height: 300.19.h,

        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WHY CHOOSE HEKA HEALTHY YOU?",
              style: TextStyle(
                  fontFamily: "gotham",
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  color: AppColors.lightGoldColor),
            ),
            SizedBox(
              height: 15.47.h,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    stackTile(borderCheck: 1, imageData: Images.firstImage),
                    stackTile(
                      borderCheck: 2,
                      imageData: Images.secondImage,
                    )
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    stackTile(
                      borderCheck: 3,
                      imageData: Images.thirdImage,
                    ),
                    stackTile(
                      borderCheck: 4,
                      imageData: Images.fourthImage,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget stackTile({
    int borderCheck = 1,
    required String imageData,
  }) {
    return Container(
        padding: controller.tilePadding(borderCheck),
        constraints: BoxConstraints(maxWidth: 101.95.w, maxHeight: 107.h),
        decoration: BoxDecoration(border: controller.stackBorder(borderCheck)),
        child: Image.asset(
          imageData,
          height: 100,
          width: 100,
        ));
  }

  Widget partnersList() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: SizedBox(
        height: 90.h,
        child: ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            separatorBuilder: (BuildContext context, int index) => SizedBox(
                  width: 10.w,
                ),
            itemBuilder: (context, index) {
              return partnersTile(
                  imageData: controller.partnerImageData[index]);
            },
            scrollDirection: Axis.horizontal,
            itemCount: 5),
      ),
    );
  }

  Widget partnersTile({String? imageData = ""}) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      child: Padding(
        padding: EdgeInsets.all(10.0.h),
        child: Align(
          alignment: Alignment.center,
          child: Image.asset(
            imageData ?? "",
            height: 70.h,
            width: 70.w,
          ),
        ),
      ),
    );
  }

  Widget bottomBar() {
    return Container(
      height:  50.h,
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
          SvgPicture.asset(
            Images.change_history,
            height: 24.h,
            width: 24.w,
          )
        ],
      ),
    );
  }
}
