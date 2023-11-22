import 'package:flutter_talk/presentation/state_holders/bottom_nab_controller.dart';
import 'package:get/get.dart';

import '../presentation/state_holders/signin_controller.dart';

class StateHolderBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
    Get.put(SignInController());
  }
}
