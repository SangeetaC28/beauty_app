import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class ConfirmOrder extends StatelessWidget {

  var controller = Get.put(HomeController());

  ConfirmOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Confirm Order'),
        ),

        body: Column(
          children: [
            Container(
              height: 600,
              child: GetBuilder(
                  init: controller,
                  builder: (context) {

                    var floatingActionButton;
                    return Container(
                      child: Padding(

                        padding: const EdgeInsets.all(8.0),
                        child: Column(


                          children: [

                            Icon(Icons.done_outline_outlined,size: 150,color: Colors.green,),
                            floatingActionButton = FloatingActionButton.extended(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white,
                                onPressed: () => {

                                },

                                label:Text("Your Order Confirmed...")
                            ),
                            new Divider(
                              color: Colors.red,
                            ),

                          ],

                        ),

                      ),
                    );

                  }
              ),
            ),
          ],


        )

    );
  }

}
