import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool isDark = false.obs;
  var themeIcon = Icons.dark_mode.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initializeTheme();
  }

  void changeTheme() {
    isDark.value = !isDark.value;
    themeIcon.value = isDark.value ? Icons.light_mode : Icons.dark_mode;
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
  }

  void initializeTheme() {
    themeIcon.value = isDark.value ? Icons.light_mode : Icons.dark_mode;
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
  }
}
