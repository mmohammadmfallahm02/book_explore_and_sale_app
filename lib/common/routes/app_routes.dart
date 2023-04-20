import 'package:book_explore_and_sale_app/common/routes/routes.dart';
import 'package:book_explore_and_sale_app/screens/explore_screen.dart';
import 'package:book_explore_and_sale_app/screens/screens.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final List<GetPage> listRoute = [
    // main screen
    GetPage(
      name: RouteName.mainScreen,
      page: () => const MainScreen(),
    ),
    // my library screen
    GetPage(
      name: RouteName.myLibraryScreen,
      page: () => const MyLibraryScreen(),
    ),
    // explore screen
    GetPage(
      name: RouteName.exploreScreen,
      page: () => const ExploreScreen(),
    ),
  ];
}
