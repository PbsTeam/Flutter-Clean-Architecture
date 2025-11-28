import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/app/modules/dashboard/views/dashboard/dashboard_view.dart';
import 'package:getx_clean_architecture/app/modules/dummy_views_that_should_follow_dashboard/favourite_view.dart';
import 'package:getx_clean_architecture/app/modules/dummy_views_that_should_follow_dashboard/reservations_view.dart';
import 'package:getx_clean_architecture/app/modules/dummy_views_that_should_follow_dashboard/profile_view.dart';
import '../../../routes/app_routes.dart';

class RootController extends GetxController {
  final currentIndex = 0.obs;

  List<Widget> pages = [
    const DashboardView(),
    const ReservationsView(),
    const FavouriteView(),
    const ProfileView(),
  ];

  Widget get currentPage => pages[currentIndex.value];

  void changePageInRoot(int index) async {
    currentIndex.value = index;
  }

  Future<void> changePageOutRoot(int index) async {
    currentIndex.value = index;
    await Get.offNamedUntil(Routes.ROOT, (route) => route.isFirst);
  }

  void changePage(int index) {
    if (Get.currentRoute == Routes.ROOT) {
      changePageInRoot(index);
    } else {
      changePageOutRoot(index);
    }
  }
}
