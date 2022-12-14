import 'dart:async';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Google_Maps_Controller extends GetxController {
  double MapPadding = 90;

  // void updatePadding(){
  //   MapPadding=300.h;
  //   update();
  // }

  GoogleMapController? newGoogleMapController;
  final Completer<GoogleMapController> controllerGoogleMap = Completer();

//for position
  Position? current_position;
  final CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  void fun(GoogleMapController controller) {
    controllerGoogleMap.complete(controller);
    newGoogleMapController = controller;
    update();
  }

  void Locate_Position() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        return Future.error('Location Not Available');
      }
    } else {
      //get current position of the user
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      current_position = position;
      

      //from current position we need latitude and longitude
      LatLng LatLngPosition =
          LatLng(current_position!.latitude, current_position!.longitude);

      // then we use our latitude and longitude to view with camera position
      CameraPosition cameraPosition =
          CameraPosition(target: LatLngPosition, zoom: 16);

      //google map camera animation towards user current location
      newGoogleMapController!
          .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    }
  }

  void GetMyLocation()async{
    //get current position of the user
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      current_position = position;
    
      //from current position we need latitude and longitude
      LatLng LatLngPosition =
          LatLng(current_position!.latitude, current_position!.longitude);

      // then we use our latitude and longitude to view with camera position
      CameraPosition cameraPosition =
          CameraPosition(target: LatLngPosition, zoom: 16);

      //google map camera animation towards user current location
      newGoogleMapController!
          .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }
}
