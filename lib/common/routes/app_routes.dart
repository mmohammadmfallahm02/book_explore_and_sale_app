

import 'package:book_explore_and_sale_app/common/routes/routes.dart';
import 'package:book_explore_and_sale_app/screens/my_library_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final List<GetPage> listRoute = [
    // home screen
    GetPage(
      name: RouteName.myLibraryScreen,
      page: () => const MyLibraryScreen(),
    ),
   
  ];
}