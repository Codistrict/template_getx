// ignore_for_file: todo

import 'package:get/get.dart';
import 'src/controllers/controller.dart';

class AuthenticationBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AuthenticationController());
  }
}

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NavigationController());
  }
}

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeController());
  }
}
