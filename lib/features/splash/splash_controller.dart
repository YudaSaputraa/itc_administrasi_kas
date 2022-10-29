import 'package:get/get.dart';
import 'package:itc_project_kas/features/onBoarding/on_boarding_screen.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();

    Future.delayed(
      const Duration(milliseconds: 1500),
      () => {
        Get.off(
          const OnBoarding(),
        ),
      },
    );
  }
}
