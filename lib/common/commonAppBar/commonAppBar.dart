import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../colors.dart';

Widget CommonAppBarWidget(BuildContext context, String screenName) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back_ios_new,
            size: 24,
            color: AppColors.blackColor.color,
          ),
          Text(
            '$screenName',
            style: Get.textTheme.titleLarge!
                .copyWith(color: AppColors.blackColor.color, fontSize: 20),
          ),
          SizedBox(
            width: 24,
          )
        ],
      ),
    ),
  );
}
