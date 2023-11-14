import 'package:get/get.dart';

class MainBottomNavController extends GetxController{

  int selectedIndex = 0;

  changeScreen(int index){
    selectedIndex = index;
    update();
  }

  void backToHome(){
    changeScreen(0);
  }

}