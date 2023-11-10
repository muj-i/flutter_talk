import 'package:flutter/material.dart';

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
                onPressed: () {},
                child: const Text('Sign In / Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
