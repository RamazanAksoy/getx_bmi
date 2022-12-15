import 'package:get/get.dart';
import 'package:getx_bmi/modules/details/details_binding.dart';
import 'package:getx_bmi/modules/details/details_scren.dart';

import '../modules/home/home_binding.dart';
import '../modules/home/home_scren.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: Routes.HOME, page: () => HomeScreen(), binding: HomeBinding()),
    GetPage(name: Routes.DETAILS, page: () => const DetailsScreen(), binding: DetailsBinding()),
  ];
}
