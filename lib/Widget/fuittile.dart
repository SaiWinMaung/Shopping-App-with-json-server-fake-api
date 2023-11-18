// ignore_for_file: prefer_interpolation_to_compose_strings, sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingappwithjsonserver/Model/fruitmodel.dart';

class FruitTile extends StatelessWidget {
  final Fruit fruit;

  FruitTile({
    super.key,
    required this.fruit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                fruit.imageUrl,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    fruit.name,
                    style: GoogleFonts.notoSerif(
                      textStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 180),
                        child: Text(
                          fruit.description,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        '\$ ' + fruit.price,
                        style: TextStyle(color: Colors.white),
                      ),
                      color: const Color.fromARGB(
                        255,
                        14,
                        145,
                        211,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
