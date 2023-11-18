import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shoppingappwithjsonserver/Pages/cartpage.dart';
import 'package:shoppingappwithjsonserver/Pages/homepage.dart';
import 'package:shoppingappwithjsonserver/Pages/intropage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => IntroPage()),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/cart', page: () => CartPage()),
      ],
    );
  }
}
