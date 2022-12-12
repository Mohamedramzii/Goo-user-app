import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => Home_ScreenState();
}

class Home_ScreenState extends State<Home_Screen> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(30.076594254234337, 31.346147577165148),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'damn map',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
        GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        Align(
          alignment: Alignment.bottomRight,
          // add your floating action button
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.map),
          ),
        ),
      ]),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: Text('To the lake!'),
      //   icon: Icon(Icons.directions_boat),
      // ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}



















// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:rider_app/constants/constants.dart';

// import '../controllers/Google_maps_controller.dart';

// class Home_Screen extends StatelessWidget {
//   Home_Screen({super.key});
//   final Google_Maps_Controller _google_maps_controller = Get.find();
//   // static final CameraPosition _kGooglePlex = CameraPosition(
//   //   target: LatLng(37.42796133580664, -122.085749655962),
//   //   zoom: 14.4746,
//   // );

//   // Completer<GoogleMapController> _controllerGoogleMap = Completer();

//   // GoogleMapController? _newGoogleMapController;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // resizeToAvoidBottomInset: true,
//       appBar: AppBar(
//         title: Text('Google Mapsss',style: TextStyle(color: Colors.black),),
//       ),
//       body: 
//       Stack(
//         children:[
//            GoogleMap(
//           initialCameraPosition: _google_maps_controller.kGooglePlex,
//           mapType: MapType.normal,
//           compassEnabled: true,
//           myLocationButtonEnabled: true,
//           // myLocationEnabled: true,
//           onMapCreated: (GoogleMapController mapController) {
//             // _google_maps_controller.controllerGoogleMap.complete(mapController);
//             // _google_maps_controller.newGoogleMapController = mapController;
//             _google_maps_controller.fun(mapController);
//           },
//         ),
//              Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               height: 320.h,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(18),
//                     topRight: Radius.circular(18),
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: KprimaryColor,
//                       blurRadius: 16,
//                       spreadRadius: 0.5,
//                       offset: const Offset(0.7, 0.7),
//                     )
//                   ]),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 6.h,
//                     ),
//                     Text(
//                       'Hi there,',
//                       style: DefaultTextTheme,
//                     ),
//                     Text(
//                       'Where to?',
//                       style: DefaultTextTheme.copyWith(fontSize: 20.sp),
//                     ),
//                     SizedBox(
//                       height: 15.h,
//                     ),
//                     Container(
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.search,
//                             color: KprimaryColor,
//                           ),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Text(
//                             'Search Your drop off',
//                             style: DefaultTextTheme,
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 25.h,
//                     ),
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.home,
//                           color: KprimaryColor,
//                           size: 50,
//                         ),
//                         SizedBox(
//                           width: 12.w,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Add Home',
//                               style: DefaultTextTheme.copyWith(
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Text('Your living home address',
//                                 style: DefaultTextTheme.copyWith(fontSize: 15))
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 20.h,
//                     ),
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.home,
//                           color: KprimaryColor,
//                           size: 50,
//                         ),
//                         SizedBox(
//                           width: 12.w,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Add Work',
//                               style: DefaultTextTheme.copyWith(
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Text('Your office address',
//                                 style: DefaultTextTheme.copyWith(
//                                   fontSize: 15,
//                                 ))
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
        
//         ] 
//       ),
//     );
//   }
// }
