import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_talk/presentation/ui/utility/app_colors.dart';

class SignInWithOptionWidget extends StatelessWidget {
  const SignInWithOptionWidget({
    super.key,
    required this.image,
    required this.onTap,
  });

  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: AppColors.colorBlack, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: SvgPicture.asset(
            image,
            width: 24.w,
            height: 24.w,
          ),
        ),
      ),
    );
  }
}
