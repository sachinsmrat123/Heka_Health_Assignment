import 'package:get/get.dart';
import 'package:heka_health_assignment/app/data/values/Images.dart';

import '../../../data/values/strings.dart';

class SafetyTrainingController extends GetxController {

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  List<String> topGridData = [Strings.basicLifeSupport,Strings.firstAid,Strings.roadSafety,Strings.electricalSafety];
  List<String> imageData = [Images.basic_life_support,Images.first_aid,Images.road_safety,Images.electrical_safety];
  List<double> gridImageHeightList = [106,105,106,110.61];
  List<double> gridImageWidthList = [172.57,175,179.34,129];
  void increment() => count.value++;
}
