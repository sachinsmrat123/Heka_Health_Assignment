import 'package:get/get.dart';

import '../controllers/safety_training_controller.dart';

class SafetyTrainingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SafetyTrainingController>(
      () => SafetyTrainingController(),
    );
  }
}
