import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_clean_architecture/app/modules/dashboard/views/all_photos_screen/widgets/AllPhotosWidget.dart';

import '../../../../../common/colors.dart';
import '../../../../../common/commonAppBar/commonAppBar.dart';

class AllPhotosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
          child: CommonAppBarWidget(context, 'All Photos'),
        ),
        AllPhotosWidget(context),
      ],
    ));
  }
}
