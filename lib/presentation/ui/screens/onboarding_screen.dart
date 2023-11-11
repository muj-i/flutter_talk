import 'package:flutter/material.dart';
import 'package:flutter_talk/presentation/ui/screens/Bottom_nab_bar_screen.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Onboarding Screen'),
              ElevatedButton(
                onPressed: () {
                  Get.to(const BottomNavBarScreen());
                },
                child: const Text('Sign In / Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
