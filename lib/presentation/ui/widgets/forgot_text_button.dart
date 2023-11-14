import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utility/app_colors.dart';
import '../utility/app_strings.dart';


class ForgotTextButton extends StatelessWidget {
  const ForgotTextButton({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onTap,child: Text(AppStrings.forgotPassword,style: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 14.sp,
      color: AppColors.colorGreen,
    ),),);
  }
}
