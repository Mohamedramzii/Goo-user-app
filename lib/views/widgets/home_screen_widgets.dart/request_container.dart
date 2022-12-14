import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class Request_Container_widget extends StatelessWidget {
  const Request_Container_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
            alignment:  Alignment(0.w,0.75.h),
            child: Container(
              height: 150.h,
              width: 330.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: KprimaryColor,
                      blurRadius: 16,
                      spreadRadius: 0.5,
                      offset: const Offset(0.7, 0.7),
                    )
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      'Hi there,',
                      style: DefaultTextTheme,
                    ),
                    Text(
                      'Where to?',
                      style: DefaultTextTheme.copyWith(fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: 280.w,
                      height: 40.h,
                      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal:5.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8),
                   
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            color: KprimaryColor,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Search Your drop off',
                            style: DefaultTextTheme,
                          )
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 25.h,
                    // ),
                    // Row(
                    //   children: [
                    //     Icon(
                    //       Icons.home,
                    //       color: KprimaryColor,
                    //       size: 50,
                    //     ),
                    //     SizedBox(
                    //       width: 12.w,
                    //     ),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           'Add Home',
                    //           style: DefaultTextTheme.copyWith(
                    //               fontWeight: FontWeight.bold),
                    //         ),
                    //         Text('Your living home address',
                    //             style: DefaultTextTheme.copyWith(fontSize: 15))
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 15.h,
                    // ),
                    // Row(
                    //   children: [
                    //     Icon(
                    //       Icons.work,
                    //       color: KprimaryColor,
                    //       size: 50,
                    //     ),
                    //     SizedBox(
                    //       width: 12.w,
                    //     ),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           'Add Work',
                    //           style: DefaultTextTheme.copyWith(
                    //               fontWeight: FontWeight.bold),
                    //         ),
                    //         Text('Your office address',
                    //             style: DefaultTextTheme.copyWith(
                    //               fontSize: 15,
                    //             ))
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          );
  }
}