import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../controllers/Google_maps_controller.dart';

class Google_map_inhomeScreen_widget extends StatelessWidget {
   Google_map_inhomeScreen_widget({super.key});
final Google_Maps_Controller _google_maps_controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
          initialCameraPosition: _google_maps_controller.kGooglePlex,
          mapType: MapType.hybrid,
          compassEnabled: true,
          zoomControlsEnabled : false,
   zoomGesturesEnabled : true,
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          onMapCreated: (GoogleMapController mapController) {
            _google_maps_controller.controllerGoogleMap.complete(mapController);
            _google_maps_controller.newGoogleMapController = mapController;
            
          },
        );
  }
}