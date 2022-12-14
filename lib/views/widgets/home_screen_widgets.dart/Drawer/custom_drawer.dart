import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goo_userapp/constants/constants.dart';
import 'package:goo_userapp/views/widgets/home_screen_widgets.dart/Drawer/drawer_header.dart';

import 'drawer_body_Listview_widget.dart';

class Custom_Drawer extends StatelessWidget {
  const Custom_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: ListView(
        children: [
          SizedBox(height: 170.h, child: const Drawer_Header_widget()),
          const SizedBox(
            height: 15,
          ),
          const Drawer_Body(
            leadingicon:
                Icon(Icons.history_rounded, size: 30, color: Colors.black),
            text: 'All Trips',
          ),
          const Drawer_Body(
            leadingicon:
                Icon(Icons.person, size: 30, color: Colors.black),
            text: 'Profile',
          ),
        
          const Drawer_Body(
            leadingicon:
                Icon(Icons.info_outline, size: 30, color: Colors.black),
            text: 'About',
          ),
        ],
      ),
    );
  }
}
