import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_talk/presentation/ui/utility/assets_path.dart';

class ScreenBackground extends StatelessWidget {
  final Widget child;
  const ScreenBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SvgPicture.asset(
            AssetsPath.backgroundImage,
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(child: child),
      ],
    );
  }
}
