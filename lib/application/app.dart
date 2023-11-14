import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_talk/presentation/ui/screens/splash_screen.dart';
import 'package:flutter_talk/presentation/ui/utility/text_form_field_theme.dart';
import 'package:get/get.dart';

import '../main.dart';

class FlutterTalk extends StatelessWidget {
  const FlutterTalk({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FlutterTalk',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: 'CircularStd',
        inputDecorationTheme: FTTextFormFieldTheme.lightInputDecorationTheme,
        ),
        initialBinding: StateHolderBinder(),
        home: const SplashScreen(),

      ),
    );
  }
}
