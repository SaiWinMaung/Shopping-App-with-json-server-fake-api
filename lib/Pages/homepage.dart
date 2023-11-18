// ignore_for_file: sort_child_properties_last, prefer_interpolation_to_compose_strings, unnecessary_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingappwithjsonserver/Controller/fruitcontroller.dart';
import 'package:shoppingappwithjsonserver/Widget/fuittile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final fruitC = Get.put(FruitController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Container(
              child: Text(
                'Hi Dear Customer !!',
                style: GoogleFonts.notoSerif(
                  textStyle: TextStyle(color: Colors.grey, fontSize: 17),
                ),
              ),
              alignment: Alignment.topLeft,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Let\'s order fresh fruits now',
              style: GoogleFonts.robotoSerif(
                textStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Fresh Fruits',
                  style: GoogleFonts.notoSerif(
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Get.toNamed('/cart');
                  },
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  color: const Color.fromARGB(
                    255,
                    14,
                    145,
                    211,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Obx(() {
              if (fruitC.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                  itemCount: fruitC.fruitList.length,
                  itemBuilder: (context, int index) {
                    return FruitTile(
                      fruit: fruitC.fruitList[index],
                    );
                  },
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
