import 'package:flutter/material.dart';
import 'package:goo_userapp/views/widgets/home_screen_widgets.dart/request_container.dart';
import 'widgets/home_screen_widgets.dart/Drawer/custom_drawer.dart';
import 'widgets/home_screen_widgets.dart/Drawer/drawer_button.dart';
import 'widgets/home_screen_widgets.dart/get_location_button_widget.dart';
import 'widgets/home_screen_widgets.dart/google_map_widget.dart';

class Home_Screen extends StatelessWidget {
  Home_Screen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Drawer_Button.scaffoldKey,
      // resizeToAvoidBottomInset: true,
      // appBar: AppBar(),
      drawer: const Custom_Drawer(),
      body: Stack(children: [
        Google_map_inhomeScreen_widget(),
        const Request_Container_widget(),
        const Drawer_Button(),
        Get_Location_Button_Widget(),
      ]),
    );
  }
}
