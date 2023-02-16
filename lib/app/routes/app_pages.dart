import 'package:get/get.dart';
import 'package:heka_health_assignment/app/modules/landing/bindings/landing_binding.dart';
import 'package:heka_health_assignment/app/routes/app_routes.dart';

import '../modules/landing/views/landing_view.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.LANDING,
      page: () => const LandingView(),
      binding: LandingBinding(),
    ),
  ];
}