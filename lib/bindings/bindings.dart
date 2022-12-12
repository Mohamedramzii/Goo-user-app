import 'package:get/instance_manager.dart';

import '../controllers/Authentication_Controller.dart';

class binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => Authentication_Controller(),fenix: true);
    // Get.lazyPut(() => Google_Maps_Controller(),fenix: true);
  }
}