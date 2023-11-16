import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_talk/presentation/ui/utility/app_colors.dart';
import 'package:flutter_talk/presentation/ui/utility/app_strings.dart';
import 'package:flutter_talk/presentation/ui/utility/assets_path.dart';

import '../widgets/text_edit_title.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   bool _passwordVisible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0,right: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60.h,),
            Center(
              child: Text(AppStrings.loginTitle,textAlign: TextAlign.center,style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.colorBlack,
              ),),
            ),
            SizedBox(height: 24.h,),
            Center(
              child: Text(AppStrings.loginSubTitle,textAlign: TextAlign.center,style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
                color: AppColors.colorDarkShade800,
              ),),
            ),
            SizedBox(height: 40.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginWithOptionWidget(image: AssetsPath.facebookIconsSVG, onTap: () {  },),
                SizedBox(width: 24.w,),
                LoginWithOptionWidget(image: AssetsPath.googleIconsSVG, onTap: () {  },),
                SizedBox(width: 24.w,),
                LoginWithOptionWidget(image: AssetsPath.appleIconsSVG, onTap: () {  },)
              ],
            ),
              SizedBox(height: 40.h,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8),
              child: Row(
                children: [
                  Container(

                    width: 132.w,
                    decoration: BoxDecoration(
                      border: Border.all( color: AppColors.colorDarkShade400.withOpacity(0.5),width: 1),
                    ),),
                  SizedBox(width: 15.w,),
                  Text('OR',textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColors.colorDarkShade400.withOpacity(0.5),
                  ),),
                  SizedBox(width: 15.w,),
                  Container(
                    width: 132.w,
                    decoration: BoxDecoration(
                      border: Border.all( color: AppColors.colorDarkShade400.withOpacity(0.5),width: 1),
                    ),),
                ],
              ),
            ),
            SizedBox(height: 30.h,),

            const TextEditFormTitle(
              text: AppStrings.yourEmail,
            ),
            SizedBox(
              height: 4.h,
            ),
            SizedBox(
              width: double.infinity,
              height: 47.h,
              child: TextFormField(
                //controller: _passwordTEController,

                decoration: const InputDecoration(
                  contentPadding:
                  EdgeInsets.only(right: 10, left: 10),

                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            const TextEditFormTitle(
              text: AppStrings.yourPassword,
            ),
            SizedBox(
              height: 4.h,
            ),
            //your mail text-form flied
            SizedBox(
              width: double.infinity,
              height: 47.h,
              child: TextFormField(
                obscuringCharacter: '*',
                //controller: _passwordTEController,
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  contentPadding:
                  const EdgeInsets.only(right: 10, left: 10),


                  suffixIcon: IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: _passwordVisible
                          ? AppColors.colorGreen
                          : Theme.of(context).disabledColor,
                      size: 25,
                    ),
                    onPressed: () {
                      // Update the state i.e. toogle the state of passwordVisible variable
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),


                ),
              ),
            ),
            SizedBox(
              height: 90.h,
            ),
        SizedBox(
          height: 50.h,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: (){},style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.colorGreen
          ), child: Text('Login',style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color:AppColors.colorPrimaryWhite
          ),),),
        ),
            SizedBox(
              height: 16.h,
            ),
            Center(
              child: TextButton(onPressed: (){}, child:  Text('Forgot Password',style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color:AppColors.colorGreen
              )  ),),
            )

          ],
        ),
      ),
    );
  }
}

class LoginWithOptionWidget extends StatelessWidget {
  const LoginWithOptionWidget({
    super.key, required this.image, required this.onTap,
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
          border: Border.all( color: AppColors.colorBlack,width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: SvgPicture.asset(image,width: 24.w,height: 24.w,),
        ),
      ),
    );
  }
}
