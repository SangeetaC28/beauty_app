import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
import 'place_order.dart';

class ProductDetails extends StatelessWidget {

  var controller = Get.put(HomeController());

  ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Food details"),
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
                                      const Text('Brand :', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[0]
                                            .brand ?? "value is not available"),

                                      ),
                                    ],

                                  ),
                                  Image.network(
                                      controller.fuelSavings.value?[index].imageLink??""
                                  ),
                                  SizedBox(height: 10,),

                                  Row(
                                    children: [
                                      floatingActionButton = FloatingActionButton.extended(
                                          backgroundColor: Colors.green,
                                          foregroundColor: Colors.white,
                                          onPressed: () => {

                                          },

                                          label:Text("Save")
                                      ),
                                      SizedBox(width: 40,),
                                      floatingActionButton = FloatingActionButton.extended(
                                          backgroundColor: Colors.pink,
                                          foregroundColor: Colors.white,
                                          onPressed: () => {
                                            Get.to(PlaceOrder())

                                          },

                                          label:Text("Add To Bag")
                                      ),
                                    ]
                                  ),
                                  SizedBox(height: 10,),
                                  Row(

                                    children: [
                                      const Text('Product Id :', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),

                                      const SizedBox(width: 5,),
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[index].id
                                            .toString() ?? "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Brand :', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[index]
                                            .brand ?? "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex:1,
                                        child: Text('Product Name :', style: TextStyle(
                                            fontSize: 15.0, fontWeight: FontWeight.bold)),
                                      ),


                                      const SizedBox(width: 5,),


                                      Expanded(
                                        flex: 2,
                                        child: InkWell(
                                          onTap: () {

                                          },
                                          child: Text(controller.fuelSavings.value?[index].name ??
                                              "value is not available"),

                                        ),
                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Price :', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[index]
                                            .price ?? "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Product Type:', style: TextStyle(
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
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Product Category:', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[index]
                                            .category ?? "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Created At:', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[index]
                                            .createdAt.toString() ??
                                            "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Upadted At:', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[index]
                                            .updatedAt.toString() ??
                                            "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Rating :', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[index].rating
                                            .toString() ?? "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Website Link:', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Text(controller.fuelSavings.value?[index]
                                            .websiteLink ?? "value is not available"),

                                      ),
                                    ],

                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      const Text('Product Link:', style: TextStyle(
                                          fontSize: 15.0, fontWeight: FontWeight.bold)),


                                      const SizedBox(width: 5,),


                                      Expanded(
                                        flex: 2,
                                        child: InkWell(
                                          onTap: () {

                                          },
                                          child: Text(controller.fuelSavings.value?[index]
                                              .productLink ?? "value is not available"),

                                        ),
                                      ),
                                    ],

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
