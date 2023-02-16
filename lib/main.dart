import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heka_health_assignment/app/data/theme/app_theme.dart';
import 'package:heka_health_assignment/app/modules/landing/bindings/landing_binding.dart';
import 'package:heka_health_assignment/app/modules/landing/views/landing_view.dart';
import 'package:heka_health_assignment/app/routes/app_pages.dart';
import 'package:heka_health_assignment/app/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        return ScreenUtilInit(
            designSize: const Size(428,926),
    builder: (context,child){
    return GetMaterialApp(
            title: 'Flutter Demo',
            getPages: AppPages.pages,
            theme: AppTheme.theme,
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.LANDING,
            home: child,
            initialBinding: LandingBinding(),
          );},
            child: const LandingView(),
        );

  }
}
