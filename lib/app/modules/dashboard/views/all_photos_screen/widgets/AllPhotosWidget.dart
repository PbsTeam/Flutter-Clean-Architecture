import 'package:flutter/cupertino.dart';

Widget AllPhotosWidget(BuildContext context) {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage('assest/images/standerd_chair.png'),
            fit: BoxFit.cover)),
  );
}
