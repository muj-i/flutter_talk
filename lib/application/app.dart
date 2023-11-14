import 'package:flutter/material.dart';
import 'package:flutter_talk/presentation/ui/screens/splash_screen.dart';
import 'package:flutter_talk/presentation/ui/utility/text_form_field_theme.dart';
import 'package:get/get.dart';

class FlutterTalk extends StatelessWidget {
  const FlutterTalk({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterTalk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'CircularStd',
        useMaterial3: true,
        inputDecorationTheme: FTTextFormFieldTheme.lightInputDecorationTheme,
      ),
      home: const SplashScreen(),
    );
  }
}
