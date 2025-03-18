import 'package:final_test_wizh/app/config/theme/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      theme: AppColorScheme.lightTheme, 
      darkTheme: AppColorScheme.darkTheme, 
      themeMode: ThemeMode.light, 
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
