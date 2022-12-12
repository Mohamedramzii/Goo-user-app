import 'dart:async';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Google_Maps_Controller extends GetxController {

GoogleMapController? newGoogleMapController;
final Completer<GoogleMapController> controllerGoogleMap = Completer();

final CameraPosition kGooglePlex =  const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  void fun(GoogleMapController controller){
    controllerGoogleMap.complete(controller);
    newGoogleMapController=controller;
    update();

  }


}
