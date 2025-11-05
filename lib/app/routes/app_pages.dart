
import 'package:get/get.dart';
import '../modules/home/home_page.dart';
import '../modules/getx/getx_page.dart';
import '../modules/routing/routing_page.dart';
import '../modules/state_management/state_management_page.dart';
import '../modules/widget_dasar/widget_dasar_page.dart';


class AppRoutes {
  static const home = '/';
  static const widgetDasar = '/widget-dasar';
  static const stateManagement = '/state-management';
  static const routing = '/routing';
  static const tentangGetx = '/tentang-getx';
}

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.home, page: () => const HomePage()),
    GetPage(name: AppRoutes.widgetDasar, page: () => const WidgetDasarPage()),
    GetPage(
        name: AppRoutes.stateManagement,
        page: () => const StateManagementPage()),
    GetPage(name: AppRoutes.routing, page: () => const RoutingPage()),
    GetPage(name: AppRoutes.tentangGetx, page: () => const TentangGetxPage()),
  ];
}