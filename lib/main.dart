import 'package:age_calc/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/theme_data.dart';
import 'controller/theme_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Obx(
      () => GetMaterialApp(
        home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
        theme: lighTheme,
        darkTheme: darkTheme,
        themeMode:
            themeController.isDark.value ? ThemeMode.dark : ThemeMode.light,
      ),
    );
  }
}
