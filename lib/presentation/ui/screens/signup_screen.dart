import 'package:flutter/material.dart';
import 'package:flutter_talk/presentation/ui/utility/colors.dart';
import 'package:flutter_talk/presentation/ui/utility/sizes.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  Color labelColor = FTColors.authFormLabel;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameTEController = TextEditingController();

  final TextEditingController _emailTEController = TextEditingController();

  final TextEditingController _passwordTEController = TextEditingController();

  @override
  void dispose() {
    _nameTEController.dispose();
    _emailTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: FTSizes.spaceBtwSections),
              Text('Sign up with Email', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: FTSizes.spaceBtwItems),
              Center(
                child: Text(
                  'Get chatting with friends and family today by signing up for our chat app!',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: FTColors.authFormSubHeading),
                ),
              ),
              const SizedBox(height: FTSizes.spaceBtwSections),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      textDirection: TextDirection.ltr,
                      controller: _nameTEController,
                      decoration: InputDecoration(
                        labelText: 'Your Name',
                        floatingLabelStyle: TextStyle(color: labelColor, fontSize: 20),
                        labelStyle: TextStyle(color: labelColor, fontSize: 20),
                        //focusColor: FTColors.authFormErrorLabel,
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        alignLabelWithHint:true,
                      ),
                      validator: (String? value){
                        if(value?.isEmpty ?? true){
                          setState(() {
                            labelColor = FTColors.authFormErrorLabel;
                          });

                          return 'Enter Your Name';
                        }
                        return null;
                      },

                    ),
                    const SizedBox(height: FTSizes.spaceBtwItems),
                    TextFormField(
                      controller: _emailTEController,
                      decoration: InputDecoration(
                        labelText: 'Your Email',
                        floatingLabelStyle: TextStyle(color: labelColor, fontSize: 20),
                        labelStyle: TextStyle(color: labelColor, fontSize: 20),
                      ),

                      validator: (String? value){
                        if(value?.isEmpty ?? true){
                          return 'This Field is Mandatory';
                        }
                        else if(value!.isEmail == false){
                          return 'Please Enter a Valid Email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: FTSizes.spaceBtwItems),
                    TextFormField(
                      controller: _passwordTEController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        floatingLabelStyle: TextStyle(color: labelColor, fontSize: 20),
                        labelStyle: TextStyle(color: labelColor, fontSize: 20),
                      ),
                      validator: (String? value){
                        if(value?.isEmpty ?? true){
                          return 'Enter Your Password';
                        }

                        return null;
                      },

                    ),
                    const SizedBox(height: FTSizes.spaceBtwItems),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        floatingLabelStyle: TextStyle(color: labelColor, fontSize: 20),
                        labelStyle: TextStyle(color: labelColor, fontSize: 20),
                      ),
                      validator: (String? value){
                        if(value?.isEmpty ?? true){
                          return 'Enter Confirm Password';
                        }else if(value != _passwordTEController.text){
                          return 'Confirm password not match';
                        }
                        return null;
                      },

                    ),
                    const SizedBox(height: FTSizes.spaceBtwSections * 4),

                    ///Crate Account Button
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          if(!_formKey.currentState!.validate()){
                            return;
                          }
                          //Get.to( () => const HomeScreen());
                        },
                        style: OutlinedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.grey.shade100,
                          side: BorderSide(color: Colors.grey.shade100),
                          textStyle: const TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                          padding: const EdgeInsets.symmetric(
                              vertical: 18, horizontal: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        child: const Text('Create an Account', style: TextStyle(color: FTColors.authFormSubHeading),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


