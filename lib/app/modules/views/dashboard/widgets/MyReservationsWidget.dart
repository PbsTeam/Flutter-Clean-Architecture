import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_clean_architecture/common/colors.dart';

import '../../../../../../common/app_fonts.dart';
import '../../models/my_reservation_model.dart';

Widget MyReservationsWidget(
    BuildContext context, MyReservationModelClass dataModel) {
  return Container(
    width: MediaQuery.sizeOf(context).width / 1.2,
    margin: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 8),
    decoration: BoxDecoration(
        color: AppColors.white.color,
        border: Border.all(color: AppColors.lightGreyColor.color, width: 1),
        borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('June 6, 2023',
                  style: Get.textTheme.titleMedium!.copyWith(
                      fontFamily: FontFamily.poppinsMedium,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor.color)),
              Row(
                children: [
                  Icon(
                    Icons.watch_later,
                    size: 16,
                    color: AppColors.buttonColor.color,
                  ),
                  Text(
                    '10:00AM - 12:00PM',
                    style: Get.textTheme.labelSmall!.copyWith(
                        color: AppColors.fieldTextColor.color,
                        fontFamily: FontFamily.poppinsMedium,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 1,
            color: AppColors.lightGreyColor.color,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(dataModel.image), fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: AppColors.low.color),
                              child: Text(
                                'Barber Shop',
                                style: Get.textTheme.labelSmall!.copyWith(
                                    color: AppColors.lightActive.color,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    fontFamily: FontFamily.poppinsMedium),
                              )),
                          Text(
                            'Confirmed',
                            style: Get.textTheme.labelSmall!.copyWith(
                                color: AppColors.green.color,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                fontFamily: FontFamily.poppinsMedium),
                          )
                        ],
                      ),
                      width: (MediaQuery.sizeOf(context).width / 1.2) - 150,
                    ),
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      'Gorgeous Salon ',
                      style: Get.textTheme.labelSmall!.copyWith(
                          color: AppColors.blackColor.color,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: FontFamily.poppinsMedium),
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
                              fontFamily: FontFamily.poppinsMedium),
                        ),
                      ],
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
                              color: AppColors.lightGreyColor.color,
                              fontFamily: FontFamily.poppinsMedium,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
