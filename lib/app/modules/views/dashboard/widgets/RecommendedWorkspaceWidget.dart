import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_clean_architecture/common/colors.dart';

import '../../../../../../common/app_fonts.dart';
import '../../models/recommended_workSpaces.dart';

Widget RecommendedWorkSpaceWidget(
    BuildContext context, RecommendedWorkSpacesModelClass dataModel) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 10, top: 16, bottom: 10),
    child: Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width / 1.4,
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(dataModel.image), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assest/images/standerd_chair.png'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amma Watson',
                      style: Get.textTheme.titleMedium!.copyWith(
                          color: AppColors.white.color,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: FontFamily.poppinsMedium),
                    ),
                    Row(
                      children: [
                        Text(
                          'The Woodlands, Texas',
                          style: Get.textTheme.labelSmall!.copyWith(
                              color: AppColors.white.color,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontFamily: FontFamily.poppinsMedium),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '∙',
                          style: Get.textTheme.labelSmall!.copyWith(
                              color: AppColors.white.color,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('5 mi',
                            style: Get.textTheme.labelSmall!.copyWith(
                                color: AppColors.white.color,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                fontFamily: FontFamily.poppinsMedium))
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.blackColor.color),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.white.color,
                    size: 24,
                  ),
                )
              ],
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
                            color: AppColors.white.color,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            fontFamily: FontFamily.poppinsSemiBold),
                      ),
                    ],
                  ),
                  Text(
                    'Form',
                    style: Get.textTheme.titleSmall!.copyWith(
                        color: AppColors.white.color,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        fontFamily: FontFamily.poppinsRegular),
                  ),
                  Text(
                    '75\$/day',
                    style: Get.textTheme.bodyLarge!.copyWith(
                        color: AppColors.buttonColor.color,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: FontFamily.poppinsSemiBold),
                  )
                ],
              ),
            ),
          ),
        ),
        // Column(
        //   children: [
        //     Text(
        //       'Four Beauty Saloon',
        //       style: Get.textTheme.headlineMedium!
        //           .copyWith(color: AppColors.buttonColor.color),
        //     )
        //   ],
        // )
      ],
    ),
  );
}
