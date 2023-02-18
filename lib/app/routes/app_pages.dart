import 'package:get/get.dart';

import '../modules/landing/bindings/landing_binding.dart';
import '../modules/landing/views/landing_view.dart';
import '../modules/safety_training/bindings/safety_training_binding.dart';
import '../modules/safety_training/views/safety_training_view.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.LANDING,
      page: () => const LandingView(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: Routes.SAFETY_TRAINING,
      page: () => const SafetyTrainingView(),
      binding: SafetyTrainingBinding(),
    ),
  ];
}
