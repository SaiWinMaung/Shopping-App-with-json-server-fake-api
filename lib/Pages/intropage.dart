// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Image.network(
              'https://img.freepik.com/free-vector/characters-people-holding-shopping-icons-illustration_53876-35217.jpg',
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'We deliver fruits in your open door here',
              style: GoogleFonts.robotoSerif(
                textStyle: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'we sent ever fresh fruits',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            onPressed: () {
              Get.toNamed('/home');
            },
            child: Text(
              'Get Started',
              style: TextStyle(color: Colors.white),
            ),
            color: const Color.fromARGB(255, 14, 145, 211),
          ),
        ],
      ),
    );
  }
}
