import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
import 'confirm_order.dart';

class PlaceOrder extends StatelessWidget {

  var controller = Get.put(HomeController());

  PlaceOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Place Order'),
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
                                  Row(

                                    children: [
                                      const Text('Product Name :', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),

                                      const SizedBox(width: 5,),
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[0].productType
                                            .toString() ?? "value is not available"),

                                      ),
                                    ],


                                  ),
                                  Image.network(
                                      controller.fuelSavings.value?[0].imageLink??""
                                  ),

                                  SizedBox(height: 10,),


                                  floatingActionButton = FloatingActionButton.extended(
                                      backgroundColor: Colors.green,
                                      foregroundColor: Colors.white,
                                      onPressed: () => {
                                        Get.to(ConfirmOrder())

                                      },

                                      label:Text("Confirm Order")
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
