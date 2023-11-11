import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_talk/presentation/ui/screens/Bottom_nab_bar_screen.dart';
import 'package:flutter_talk/presentation/ui/utility/assets_path.dart';
import 'package:flutter_talk/presentation/ui/widget/screen_background.dart';
import 'package:flutter_talk/presentation/ui/widgets/select_login_signup_options.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        AssetsPath.flutterTalkLogo2SVG,
                        width: 100,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Connect\nfriends\neasily &\nquickly',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 45, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Our chat app is the perfect way to stay connected with friends and family.',
                    style: TextStyle(
                      color: Colors.white60,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectLoginSignupOptions(
                        imageLink: AssetsPath.facebookLogoSVG,
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SelectLoginSignupOptions(
                        imageLink: AssetsPath.googleLogoSVG,
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SelectLoginSignupOptions(
                        imageLink: AssetsPath.appleLogoSVG,
                        onTap: () {},
                        isChangeColor: true,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white12.withOpacity(0.5),
                                width: 0.5),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          'OR',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white12.withOpacity(0.5),
                                width: 0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const BottomNavBarScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'Sign up with mail',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Existing account?',
                        style: TextStyle(color: Colors.white60),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Log in',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
