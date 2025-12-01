import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:getx_clean_architecture/app/modules/views/reservations_views/completed_reservations_view.dart';
import 'package:getx_clean_architecture/app/modules/views/reservations_views/confirmed_reservations_view.dart';
import 'package:getx_clean_architecture/app/modules/views/reservations_views/pending_reservation_view.dart';
import 'package:getx_clean_architecture/common/app_fonts.dart';
import 'package:getx_clean_architecture/common/colors.dart';
import 'package:getx_clean_architecture/common/translations/AppLanguageUpdate.dart';

class ReservationsView extends GetView<DashboardController> {
  const ReservationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Center(
                  child: Text('My Reservations',
                      textAlign: TextAlign.center,
                      style: Get.textTheme.titleLarge!.copyWith(
                          color: AppColors.blackColor.color,
                          fontFamily: FontFamily.poppinsSemiBold,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                ),
                const SizedBox(height: 15),
                Expanded(
                  child: Column(
                    children: [
                      TabBar(
                          labelColor: AppColors.buttonColor.color,
                          unselectedLabelColor: AppColors.blackColor.color,
                          indicatorColor: AppColors.buttonColor.color,
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelStyle: TextStyle(
                              fontFamily: FontFamily.poppinsMedium,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                          tabs: [
                            Tab(text: 'Pending'),
                            Tab(text: 'Confirmed'),
                            Tab(text: 'Completed')
                          ]),
                      Expanded(
                        child: TabBarView(children: [
                          ListView.separated(
                              itemBuilder: (context, index) =>
                                  PendingReservationView("Pending"),
                              separatorBuilder: (context, index) => SizedBox(
                                    height: 4,
                                  ),
                              itemCount: 10),
                          ListView.separated(
                              itemBuilder: (context, index) =>
                                  PendingReservationView("Confirmed"),
                              separatorBuilder: (context, index) => SizedBox(
                                    height: 4,
                                  ),
                              itemCount: 6),

                          ListView.separated(
                              itemBuilder: (context, index) =>
                                  PendingReservationView("Complete"),
                              separatorBuilder: (context, index) => SizedBox(
                                    height: 4,
                                  ),
                              itemCount: 3),

                          // ListView.separated(
                          //     itemBuilder: (context, index) => Container(
                          //           height: 100,
                          //           color: Colors.red,
                          //         ),
                          //     separatorBuilder: (context, index) => SizedBox(
                          //           height: 10,
                          //         ),
                          //     itemCount: 20),

                          // Center(child: ConfirmedReservationsView()),
                          // Center(child: CompletedReservationView()),
                        ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));

    //   Center(
    //     child: Text(
    //   textAlign: TextAlign.center,
    //   AppLanguageUpdate.reservationsComingSoon.tr,
    //   style: Get.textTheme.headlineLarge!,
    // ));
  }
}
