import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
import 'product_details.dart';

class DashBoard extends StatelessWidget {

  var controller = Get.put(HomeController());

  DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product'),
        ),

        body: Column(
          children: [
            Container(
              height: 600,
              child: GetBuilder(
                  init: controller,
                  builder: (context) {
                    return ListView.builder(
                        itemCount: controller.fuelSavings.value?.length??0,
                        itemBuilder: (context, index) {
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
                                        child: Text(controller.fuelSavings.value?[index]
                                            .productType ?? "value is not available"),

                                      ),
                                    ],

                                  ),
                                  Image.network(
                                      controller.fuelSavings.value?[index].imageLink??""
                                  ),

                                  SizedBox(height: 10,),
                                  floatingActionButton = FloatingActionButton.extended(
                                   backgroundColor: Colors.green,
                                   foregroundColor: Colors.white,
                                    onPressed: () => {
                                     Get.to(ProductDetails())

                                    },

                                    label:Text("Product Details")
                                  ),
                                  new Divider(
                                    color: Colors.red,
                                  ),
                                ],

                              ),
                            ),
                          );
                        });
                  }
              ),
            ),
          ],


        )

    );
  }

}
