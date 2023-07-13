import 'package:flash_chat/controller/auth_controller.dart';
import 'package:get/get.dart';

class AllControllerBinder implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
