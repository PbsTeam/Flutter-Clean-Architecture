import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_clean_architecture/common/colors.dart';

import '../../../../../../common/app_fonts.dart';
import '../../../../models/available_within_hours_model.dart';

Widget AvailableWithin24hour(
  BuildContext context,
  AvailableWithINHoursModelClass dataModel,
) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Container(
      width: MediaQuery.sizeOf(context).width / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white.color,
        border: Border.all(color: AppColors.lightGreyColor.color, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(dataModel.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          'Entire beauty',
                          style: Get.textTheme.titleMedium!.copyWith(
                            color: AppColors.blackColor.color,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: FontFamily.poppinsMedium,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 16,
                            color: AppColors.buttonColor.color,
                          ),
                          Text(
                            '4.5',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Get.textTheme.titleMedium!.copyWith(
                              color: AppColors.blackColor.color,
                              fontFamily: FontFamily.poppinsSemiBold,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assest/images/location_icon.png',
                        width: 16,
                        height: 16,
                        color: AppColors.lightGreyColor.color,
                      ),
                      Text(
                        'Houston, Texas',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Get.textTheme.titleMedium!.copyWith(
                          color: AppColors.lightGreyColor.color,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          fontFamily: FontFamily.poppinsMedium,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.buttonColor.color,
                    ),
                    child: Text(
                      'Book',
                      style: Get.textTheme.headlineMedium!.copyWith(
                        color: AppColors.white.color,
                        fontSize: 14,
                        fontFamily: FontFamily.poppinsSemiBold,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
