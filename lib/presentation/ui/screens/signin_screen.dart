import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_talk/presentation/ui/screens/bottom_nav_bar_screen.dart';
import 'package:flutter_talk/presentation/ui/utility/app_colors.dart';
import 'package:flutter_talk/presentation/ui/utility/app_strings.dart';
import 'package:flutter_talk/presentation/ui/utility/assets_path.dart';
import 'package:flutter_talk/presentation/ui/widgets/signin_with_options.dart';
import 'package:flutter_talk/presentation/ui/widgets/text_edit_title.dart';
import 'package:get/get.dart';

import '../../state_holders/signin_controller.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _passwordVisible = false;
  final _emailTEController = TextEditingController();
  final _passwordTEController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Center(
                  child: Text(
                    AppStrings.loginTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.colorBlack,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Center(
                  child: Text(
                    AppStrings.loginSubTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                      color: AppColors.colorDarkShade800,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInWithOptionWidget(
                      image: AssetsPath.facebookIconsSVG,
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    SignInWithOptionWidget(
                      image: AssetsPath.googleIconsSVG,
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    SignInWithOptionWidget(
                      image: AssetsPath.appleIconsSVG,
                      onTap: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    children: [
                      Container(
                        width: 132.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.colorDarkShade400.withOpacity(
                                  0.5),
                              width: 1),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        'OR',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          color: AppColors.colorDarkShade400.withOpacity(0.5),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Container(
                        width: 132.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.colorDarkShade400.withOpacity(
                                  0.5),
                              width: 1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),

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
                    validator: (String? value) {
                      if (value?.isEmpty ?? true) {
                        return 'Email is empty';
                      }
                      return null;
                    },
                    controller: _emailTEController,

                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(right: 10, left: 10),
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
                    validator: (String? value) {
                      if (value?.isEmpty ?? true) {
                        return 'password is empty';
                      }
                      return null;
                    },
                    obscuringCharacter: '*',
                    controller: _passwordTEController,
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          right: 10, left: 10),
                      suffixIcon: IconButton(
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: _passwordVisible
                              ? AppColors.colorGreen
                              : Theme
                              .of(context)
                              .disabledColor,
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
                  height: 40,
                  width: double.infinity,
                  child: GetBuilder<SignInController>(
                    builder: (controller) {
                      if (controller.logInProgress) {
                        return const CircularProgressIndicator();
                      }
                      return ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            controller.getlogin(
                                  _emailTEController.text
                                _passwordTEController.text){

    }



                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.colorGreen),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.colorPrimaryWhite),
                        ),
                      )
                      ,
                    },

                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Forgot Password',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.colorGreen)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
