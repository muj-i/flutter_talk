import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_talk/presentation/ui/utility/app_colors.dart';

class TextEditFormTitle extends StatelessWidget {
  const TextEditFormTitle({super.key, required this.text});
  final String text;


  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign: TextAlign.center,style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.colorGreen
    ),);
  }
}
