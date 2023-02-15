import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../view/saved_data.dart';

class SignInController extends GetxController{

  final formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController userPasswordControoler = TextEditingController();

  late var prefs;

  @override
  void onInit() async{
    super.onInit();
    prefs = await SharedPreferences.getInstance();

  }
  void savedCredetials(){
    prefs.setString('user_name', userNameController.text);
     prefs.setString('user_password',userPasswordControoler.text);

    Get.to(MyNewScreen());
  }
}