import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_clean_architecture/common/colors.dart';
import 'package:getx_clean_architecture/common/commonAppBar/commonAppBar.dart';

class AllListingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
            child: CommonAppBarWidget(context, 'All Listing'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Listing (42)',
                  style: Get.textTheme.titleLarge!.copyWith(
                      color: AppColors.blackColor.color, fontSize: 18),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          width: 1, color: AppColors.fieldTextColor.color)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Add Filters',
                      style: Get.textTheme.titleSmall!.copyWith(fontSize: 10),
                    ),
                  ),
                )
              ],
            ),
          ),
          // Container(
          //   color: AppColors.bgColor.color,
          //   child: RecommendedWorkSpaceWidget(context),
          // )
        ],
      ),
    );
  }
}
