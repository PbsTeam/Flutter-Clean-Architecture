import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  bool isDark = false;
  static const String _storageKey = 'isDarkMode';

  // storage instance
  final GetStorage _box = GetStorage();

  // reactive boolean to track dark mode
  final RxBool isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    // read saved value; default false (light)
    bool saved = _box.read(_storageKey) ?? false;
    isDarkMode.value = saved;
  }

  ThemeMode get themeMode =>
      isDarkMode.value ? ThemeMode.dark : ThemeMode.light;

  // toggle and persist
  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    _box.write(_storageKey, isDarkMode.value);
    // notify GetX to update MaterialApp's themeMode if bound
    // (we usually bind the themeMode getter in GetMaterialApp)
  }

  // optional: explicit setter
  void setDarkMode(bool dark) {
    isDarkMode.value = dark;
    _box.write(_storageKey, dark);
  }
}
