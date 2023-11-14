import 'package:flutter/material.dart';
import 'package:flutter_talk/application/app.dart';
import 'package:flutter_talk/presentation/state_holders/bottom_nab_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FlutterTalk());
}
class StateHolderBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
  }
}