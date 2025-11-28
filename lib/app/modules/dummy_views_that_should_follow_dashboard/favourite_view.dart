import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:getx_clean_architecture/common/colors.dart';
import 'package:getx_clean_architecture/common/translations/AppLanguageUpdate.dart';

class FavouriteView extends GetView<DashboardController> {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      textAlign: TextAlign.center,
      AppLanguageUpdate.favouriteComingSoon.tr,
      style: Get.textTheme.headlineLarge!,
    ));
  }
}
