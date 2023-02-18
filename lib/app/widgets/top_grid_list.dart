import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/theme/app_colors.dart';
import '../data/theme/styles.dart';
import '../routes/app_routes.dart';

class TopGridList extends StatelessWidget {
    TopGridList(
       {Key? key,
         this.data,
        this.height,
       this.width,
       this.textData,
         this.pointer
      })
      : super(key: key);

  final List<String>? data;
  final List<double>? height ;
  final List<double>? width ;
  final List<String>? textData;
  int? pointer = 1;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:  20.0.w ,right :20.0.w ),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 26.w,
              mainAxisSpacing: 10.01.h,
              mainAxisExtent: pointer == 1 ? 136.h : 150.h
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return topListTile(
                data: data?[index],
                textData: textData?[index],
                height: height?[index],
                width: width?[index],
                index: index);
          }),
    );
  }

   Widget topListTile(
       {String? data = "",
         double? height = 93.48,
         double? width = 102,
         String? textData = "Sachin",
         int? index = 0}) {
     return Column(
       children: [
         GestureDetector(
           onTap: () => textData == "Safety Training" ?  Get.toNamed(Routes.SAFETY_TRAINING) : {},
           child: Container(
             clipBehavior: Clip.none,
             alignment: Alignment.center,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(9.0),
               border: Border.all(
                   color: AppColors.topBorderColor,
                   width: 1.6,
                   strokeAlign: BorderSide.strokeAlignOutside),
             ),
             child: Image.asset(data ?? "", width: (width ?? 0).w, height: (height ?? 0).h)
           ),
         ),
         SizedBox(
           height: 15.h,
         ),
         Text(
           textData ?? "",
           style: Styles.tsPrimaryColorRegular18.copyWith(
               fontSize: 14.sp,
               color: AppColors.black,
               fontWeight: FontWeight.w600),
         )
       ],
     );
   }
}
