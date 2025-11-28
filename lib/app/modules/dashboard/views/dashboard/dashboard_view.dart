import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:getx_clean_architecture/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:getx_clean_architecture/app/modules/dashboard/views/dashboard/widgets/FeaturedWorkspaceWidget.dart';
import 'package:getx_clean_architecture/app/modules/dashboard/views/dashboard/widgets/MyReservationsWidget.dart';
import 'package:getx_clean_architecture/app/modules/dashboard/views/dashboard/widgets/RecommendedWorkspaceWidget.dart';
import 'package:getx_clean_architecture/app/modules/dashboard/views/dashboard/widgets/TypeOfWidget.dart';
import 'package:getx_clean_architecture/app/modules/dashboard/views/dashboard/widgets/availablewithin24HourWidget.dart';
import 'package:getx_clean_architecture/common/app_fonts.dart';
import 'package:getx_clean_architecture/common/colors.dart';
import 'package:getx_clean_architecture/common/translations/AppLanguageUpdate.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white.color,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: AppColors.lightGreyColor.color
                          .withValues(alpha: 0.15),
                      blurRadius: 3,
                      spreadRadius: 5,
                      offset: const Offset(0, 0),
                    )
                  ]),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hi Serenity',
                                  style: Get.textTheme.titleLarge!.copyWith(
                                      color: AppColors.lightActive.color,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: FontFamily.poppinsLight,
                                      fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assest/images/location_icon.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                    Flexible(
                                      child: Text('Houston Texes',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: Get.textTheme.titleMedium!
                                              .copyWith(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily:
                                                      FontFamily.poppinsRegular,
                                                  color: AppColors
                                                      .blackColor.color)),
                                    ),
                                    Image.asset(
                                      'assest/images/arrow_down.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                  color: AppColors.buttonColorlight.color,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assest/images/bell_icon.png",
                                  width: 24,
                                  height: 24,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppLanguageUpdate.typeOfWorkSpace.tr,
                          style: Get.textTheme.headlineMedium!.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: FontFamily.poppinsSemiBold,
                              color: AppColors.blackColor.color)),
                      Text(AppLanguageUpdate.seeAll.tr,
                          style: Get.textTheme.headlineMedium!.copyWith(
                              fontSize: 14,
                              color: AppColors.buttonColor.color,
                              fontFamily: FontFamily.poppinsRegular,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.typeOfWorkSpaceModel.length,
                      itemBuilder: (BuildContext context, int index) {
                        return TypeOfWorkspaceWidget(
                            context, controller.typeOfWorkSpaceModel[index]);
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppLanguageUpdate.featuredWorkSpace.tr,
                          style: Get.textTheme.headlineMedium!.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: FontFamily.poppinsSemiBold,
                              color: AppColors.blackColor.color)),
                      Text(AppLanguageUpdate.seeAll.tr,
                          style: Get.textTheme.headlineMedium!.copyWith(
                              fontSize: 14,
                              fontFamily: FontFamily.poppinsRegular,
                              color: AppColors.buttonColor.color,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                SizedBox(
                    height: 270,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.featuredWorkSpaceModel.length,
                        itemBuilder: (BuildContext context, int index) {
                          return FeatureWorkspaceWidget(context,
                              controller.featuredWorkSpaceModel[index]);
                        })),
                SizedBox(height: 10),
                Container(
                  decoration:
                      BoxDecoration(color: AppColors.containerBgColor.color),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppLanguageUpdate.myReservations.tr,
                                style: Get.textTheme.headlineMedium!.copyWith(
                                    fontSize: 18,
                                    color: AppColors.blackColor.color,
                                    fontFamily: FontFamily.poppinsSemiBold,
                                    fontWeight: FontWeight.w700)),
                            Text(AppLanguageUpdate.seeAll.tr,
                                style: Get.textTheme.headlineMedium!.copyWith(
                                    fontSize: 14,
                                    fontFamily: FontFamily.poppinsMedium,
                                    color: AppColors.buttonColor.color,
                                    fontWeight: FontWeight.w500))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 220,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.myreservationModelClass.length,
                          itemBuilder: (BuildContext context, int index) {
                            return MyReservationsWidget(context,
                                controller.myreservationModelClass[index]);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 2,
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: Row(
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        AppLanguageUpdate.availableWithinHour.tr,
                        style: Get.textTheme.headlineMedium!.copyWith(
                            fontSize: 18,
                            color: AppColors.blackColor.color,
                            fontFamily: FontFamily.poppinsSemiBold,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          controller.availableWithInHourModelClass.length,
                      itemBuilder: (BuildContext context, int index) {
                        return AvailableWithin24hour(context,
                            controller.availableWithInHourModelClass[index]);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppLanguageUpdate.recommendedWorkSpaces.tr,
                          style: Get.textTheme.headlineMedium!.copyWith(
                              fontSize: 18,
                              fontFamily: FontFamily.poppinsSemiBold,
                              color: AppColors.blackColor.color,
                              fontWeight: FontWeight.w700)),
                      Text(AppLanguageUpdate.seeAll.tr,
                          style: Get.textTheme.headlineMedium!.copyWith(
                              fontSize: 14,
                              fontFamily: FontFamily.poppinsRegular,
                              color: AppColors.buttonColor.color,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          controller.recommendedWorkSpacesModelClass.length,
                      itemBuilder: (BuildContext context, int index) {
                        return RecommendedWorkSpaceWidget(context,
                            controller.recommendedWorkSpacesModelClass[index]);
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
