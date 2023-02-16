import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/theme/app_colors.dart';
import '../../../data/values/Images.dart';

class LandingController extends GetxController {
  //TODO: Implement LandingController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }


  final RxInt _currentIndex = 0.obs;
  int get currentIndex => _currentIndex.value;

  setPageIndex(int index){
    _currentIndex.value = index;
  }

  List<String> imageList = [Images.safety_training,Images.h2,Images.online_consultation,Images.health_turism];
  List<String> nameList = ["Safety Training","Health Care","Online Consultation","Health Tourism"];
  List<double> imageWidth = [102,127,154,176];
  List<double> imageHeight = [93.48,96.2,93,96];
  List<String> leftImageList = [Images.ambulance,Images.patient,Images.pragnancy_care,Images.lab_test,Images.doctor_consultation,Images.medical_astrology,Images.operative_care];
  List<String> rightImageList = [Images.doctor_pana,Images.bro,Images.baby_birth,Images.blood_test,Images.doctor_network,Images.med_astro,Images.op_care];
  List<double> leftImageHeightList = [100.12,100,80,80,97.21,80,80];
  List<double> leftImageWidthList = [106.41,100.35,103.19,88.63,86.15,72.56,83.39];
  List<double> rightImageHeightList = [68.22,100,80,80,80,80,80];
  List<double> rightImageWidthList = [106.41,112.02,104.99,85.75,94.57,138.95,105.56];
  List<int> ambulanceTest = [2,1,1,1,1,1,1,];
  List<String> pageViewHeaderList = ["BLS Training","Elderly Care","Pregnancy Care","Lab Test","Doctor Consultation","Medical Astrology","Operative Care"];
  List<String> partnerImageData = [Images.all_india_counsile,Images.fortis_logo,Images.max_logo,Images.tata_1mg_logo,Images.path_kind_labs];
  @override
  void onClose() {}
  void increment() => count.value++;

  Border stackBorder(int borderCheck) {
    if (borderCheck == 1) {
      return const Border(
          bottom: BorderSide(width: 1.5, color: AppColors.borderColor),
          right: BorderSide(width: 1.5, color: AppColors.borderColor));
    } else if (borderCheck == 2) {
      return const Border(
          left: BorderSide(width: 1.5, color: AppColors.borderColor),
          bottom: BorderSide(width: 1.5, color: AppColors.borderColor));
    } else if (borderCheck == 3) {
      return const Border(
          top: BorderSide(width: 1.5, color: AppColors.borderColor),
          right: BorderSide(width: 1.5, color: AppColors.borderColor));
    } else {
      return const Border(
          top: BorderSide(width: 1.5, color: AppColors.borderColor),
          left: BorderSide(width: 1.5, color: AppColors.borderColor));
    }
  }

  EdgeInsets tilePadding(int borderCheck) {
    if (borderCheck == 1) {
      return EdgeInsets.only(bottom: 3.h, right: 8.54.w);
    } else if (borderCheck == 2) {
      return EdgeInsets.only(bottom: 3.h, left: 8.54.w);
    } else if (borderCheck == 3) {
      return EdgeInsets.only(top: 3.h, right: 8.54.w);
    } else {
      return EdgeInsets.only(top: 3.h, left: 8.54.w);
    }
  }
}
