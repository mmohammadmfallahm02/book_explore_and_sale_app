import 'package:book_explore_and_sale_app/common/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'common/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: AppRoutes.listRoute,
      theme: MyAppThemeConfig.themeConfig(),
    );
  }

  
}
