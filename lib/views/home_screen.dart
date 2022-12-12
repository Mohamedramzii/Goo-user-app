import 'dart:async';

import 'package:flutter/material.dart';
import 'package:goo_userapp/views/widgets/home_screen_widgets.dart/request_container.dart';
import 'widgets/home_screen_widgets.dart/google_map_widget.dart';

class Home_Screen extends StatelessWidget {
  Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      
      body: Stack(children: [
        Google_map_inhomeScreen_widget(),
        const Request_Container_widget()
      ]),
    );
  }
}
