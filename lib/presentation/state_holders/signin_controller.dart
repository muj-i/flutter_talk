import 'dart:developer';
import 'dart:js_interop';

import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInController  extends GetxController{

bool _logInProgress=false;
String _message='';
  bool get logInProgress => _logInProgress;
  String get message=> _message;

  Future<void> getlogin(String email,String password )async{
    _logInProgress=true;
    update();
    try{
      _logInProgress=false;
      update();
      final credentital=await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password

      );
    }
  on FirebaseAuthException   catch(e){
      _message=e.toString();
      update();
      log(_message);
    }
  }




}