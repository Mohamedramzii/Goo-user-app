import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goo_userapp/constants/constants.dart';

class Drawer_Button extends StatelessWidget {
   const Drawer_Button({super.key});
  static GlobalKey<ScaffoldState> scaffoldKey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40.h,
      left: 10.w,
      child: GestureDetector(
        onTap: (){
          scaffoldKey.currentState!.openDrawer();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            radius: 24,
            child: Icon(Icons.menu,color: KprimaryColor,size: 30,),
          ),
        ),
      ),
    );
  }
}