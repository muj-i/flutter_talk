import 'package:flutter/material.dart';
import 'package:flutter_talk/presentation/ui/screens/splash_screen.dart';
import 'package:get/get.dart';
import '../main.dart';

class FlutterTalk extends StatelessWidget {
  const FlutterTalk({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterTalk',
      initialBinding:StateHolderBinder(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
