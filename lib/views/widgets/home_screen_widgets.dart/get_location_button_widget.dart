import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import '../../../controllers/Google_maps_controller.dart';

class Get_Location_Button_Widget extends StatelessWidget {
  Get_Location_Button_Widget({super.key});
  final Google_Maps_Controller _google_maps_controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40.h,
      right: 10.w,
      child: GestureDetector(
        onTap: () {
          _google_maps_controller.GetMyLocation();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            radius: 24,
            child: Icon(
              Icons.my_location_outlined,
              color: KprimaryColor,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
