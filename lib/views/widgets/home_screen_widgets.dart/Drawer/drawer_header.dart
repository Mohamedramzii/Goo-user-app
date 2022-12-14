import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/constants.dart';

class Drawer_Header_widget extends StatelessWidget {
  const Drawer_Header_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
                decoration: BoxDecoration(color: KprimaryColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/user_icon.png',
                      height: 60.h,
                      width: 60.h,
                    ),
                    SizedBox(height: 15.h),
                    Column(
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 160.w,
                            maxWidth: 200.w,
                          ),
                          child: Text(
                            'Muhammed Ramzy gad',
                            style: DefaultTextTheme.copyWith(
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            // softWrap: true,
                          ),
                        ),
                        Text('Goo user'),
                        SizedBox(
                          height: 12.h,
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text('Visit Profile'),
                              Icon(Icons.arrow_forward_ios_rounded,size: 20,)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
  }
}