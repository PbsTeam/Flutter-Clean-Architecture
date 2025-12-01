import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_clean_architecture/common/app_fonts.dart';
import 'package:getx_clean_architecture/common/colors.dart';

import '../../models/featured_workspace_model.dart';

Widget FeatureWorkspaceWidget(
    BuildContext context, FeaturedWorkSpaceModelClass dataModel) {
  return Container(
    width: MediaQuery.sizeOf(context).width / 1.1,
    child: Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16, left: 16, right: 16),
              width: MediaQuery.sizeOf(context).width / 1.1,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(dataModel.image),
                  fit: BoxFit
                      .cover, // Adjust how the image fits within the container
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.secondaryTextColor.color,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Form',
                        style: Get.textTheme.titleSmall!.copyWith(
                            color: AppColors.white.color,
                            fontFamily: FontFamily.poppinsMedium),
                      ),
                      Text(
                        '75\$/day',
                        style: Get.textTheme.bodyLarge!.copyWith(
                            color: AppColors.buttonColor.color,
                            fontFamily: FontFamily.poppinsMedium),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  dataModel.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Get.textTheme.titleMedium!.copyWith(
                      color: AppColors.blackColor.color,
                      fontFamily: FontFamily.poppinsMedium,
                      fontWeight: FontWeight.w500),
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
                        fontFamily: FontFamily.poppinsMedium,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Image.asset(
                'assest/images/location_icon.png',
                width: 22,
                height: 22,
                color: AppColors.lightGreyColor.color,
              ),
              Text(
                dataModel.location,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Get.textTheme.titleMedium!.copyWith(
                    color: AppColors.lightGreyColor.color,
                    fontFamily: FontFamily.poppinsMedium,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
