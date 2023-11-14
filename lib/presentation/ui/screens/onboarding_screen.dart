import 'package:flutter/material.dart';
import 'package:flutter_talk/presentation/ui/screens/signup_screen.dart';
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
                  Get.to(SignUpScreen());
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
