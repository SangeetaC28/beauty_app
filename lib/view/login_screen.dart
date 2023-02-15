import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/strings.dart';
import '../controller/home_controller.dart';
import '../controller/login_controller.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget{

  var controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        title: Text(MyString.head_text),
        backgroundColor: Colors.orangeAccent,
      ),
      body:
      SafeArea(
        child: SingleChildScrollView(
          child: Form(

            key: controller.formKey,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(

                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),

                  child: TextFormField(
                    controller: controller.userNameController,
                    onChanged:  (val){
                      print(val);

                    },
                    onSaved: (value){

                    },

                    validator: (value){
                     return value!. isEmpty ? 'User Name canot be empty' : null;

                    },

                    decoration: InputDecoration(
                      border: OutlineInputBorder(),

                      hintText: 'Enter Your Name',

                    ),

                  ),


                ),
                Padding(

                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),

                  child: TextFormField(
                    controller: controller.userPasswordControoler,
                    onChanged:  (val){
                      print(val);

                    },
                    onSaved: (value){

                    },

                    validator: (value){
                      return value!. isEmpty ? 'Password must be minumun 8 charecters' : null;

                    },

                    decoration: InputDecoration(
                      border: OutlineInputBorder(),

                      hintText: 'Enter Your Password',

                    ),

                  ),


                ),

                SizedBox(height: 10,),
                Center(

                  child: InkWell(

                    onTap:()  {

                      if(
                      controller.formKey.currentState!.validate()){
                        controller.savedCredetials();
                      }
                    } ,
                    child: Padding(

                      padding: const EdgeInsets.all(8.0),

                      child: Container(

                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.black54,
                              width: 2
                          ),

                        ),

                        child:  Text('Login',
                            style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}