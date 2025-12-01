import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_clean_architecture/common/colors.dart';

import '../../../../common/app_fonts.dart';

class PendingReservationView extends StatelessWidget {
  final String reservation_type;

  const PendingReservationView(this.reservation_type);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.white.color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.borderColor.color, width: 1)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                            'assest/images/dummy_sallon_shop_image.png'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Gorgeous Salon booth for rent,',
                      style: Get.textTheme.titleMedium!.copyWith(
                          color: AppColors.blackColor.color,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: AppColors.buttonColor.color,
                      ),
                      Text(
                        'Houston, Tx',
                        style: Get.textTheme.titleMedium!.copyWith(
                            color: AppColors.lightGreyColor.color,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.borderColor.color,
                                    width: 1),
                                borderRadius: BorderRadius.circular(16)),
                            child: Text(
                              'Priavte Room',
                              style: Get.textTheme.labelSmall!.copyWith(
                                  color: AppColors.lightActive.color,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  fontFamily: FontFamily.poppinsMedium),
                            )),
                        Text(
                          reservation_type == "Pending"
                              ? 'Pending Approval'
                              : reservation_type == "Confirmed"
                                  ? 'Confirmed'
                                  : 'Completed',
                          style: Get.textTheme.labelSmall!.copyWith(
                              color: reservation_type == "Pending"
                                  ? AppColors.green.color
                                  : reservation_type == "Confirmed"
                                      ? AppColors.buttonColor.color
                                      : AppColors.green.color,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontFamily: FontFamily.poppinsMedium),
                        )
                      ],
                    ),
                    width: (MediaQuery.sizeOf(context).width / 1.2) - 110,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: AppColors.borderColor.color,
            height: 1,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assest/images/standerd_chair.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Amma Watson',
                      style: Get.textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor.color,
                          fontSize: 12,
                          fontFamily: FontFamily.poppinsMedium))
                ],
              ),
              Text('\$76.57',
                  style: Get.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor.color,
                      fontSize: 16,
                      fontFamily: FontFamily.poppinsSemiBold))
            ],
          )
        ],
      ),
    );
  }
}
