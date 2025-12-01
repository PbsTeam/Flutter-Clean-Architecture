import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/common/app_fonts.dart';
import 'package:getx_clean_architecture/common/colors.dart';

import '../../../../models/type_of_work_space_model.dart';

Widget TypeOfWorkspaceWidget(
  BuildContext context,
  TypeOfWorkSpaceModelClass typeOfWorkSpaceModelClass,
) {
  return Padding(
    padding: const EdgeInsets.only(top: 6, bottom: 6, left: 16),
    child: Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: typeOfWorkSpaceModelClass.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: typeOfWorkSpaceModelClass.backgroundColor.withValues(
              alpha: 0.45,
            ),
            blurRadius: 8,
            spreadRadius: 3,
            offset: const Offset(-1, 5),
          ),
          // BoxShadow(
          //   color: typeOfWorkSpaceModelClass.backgroundColor,
          //   blurRadius: 2.0,
          //   offset: const Offset(0, 2),
          // )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            typeOfWorkSpaceModelClass.image,
            width: 26,
            height: 26,
            color: AppColors.white.color,
          ),
          Flexible(
            child: Text(
              typeOfWorkSpaceModelClass.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Get.textTheme.titleMedium!.copyWith(
                color: AppColors.white.color,
                fontSize: 14,
                fontFamily: FontFamily.poppinsMedium,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
