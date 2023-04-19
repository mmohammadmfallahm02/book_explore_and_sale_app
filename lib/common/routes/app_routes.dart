

import 'package:book_explore_and_sale_app/common/routes/routes.dart';
import 'package:book_explore_and_sale_app/screens/screens.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final List<GetPage> listRoute = [
    // home screen
    GetPage(
      name: RouteName.mainScreen,
      page: () => const MainScreen(),
    ),
    GetPage(
      name: RouteName.myLibraryScreen,
      page: () => const MyLibraryScreen(),
    ),
   
  ];
}