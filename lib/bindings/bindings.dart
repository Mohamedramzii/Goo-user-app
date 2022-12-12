import 'package:get/instance_manager.dart';

import '../controllers/Authentication_Controller.dart';
import '../controllers/Google_maps_controller.dart';

class binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => Authentication_Controller(),fenix: true);
    Get.lazyPut(() => Google_Maps_Controller(),fenix: true);
  }
}