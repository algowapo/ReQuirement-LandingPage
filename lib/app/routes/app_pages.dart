import 'package:get/get.dart';
import 'package:landing_page/app/modules/feedback/bindings/feedback_binding.dart';
import 'package:landing_page/app/modules/feedback/views/feedback_view.dart';

import 'package:landing_page/app/modules/home/bindings/home_binding.dart';
import 'package:landing_page/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FEEDBACK;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FEEDBACK,
      page: () => FeedbackView(),
      binding: FeedbackBinding(),
    ),
  ];
}
