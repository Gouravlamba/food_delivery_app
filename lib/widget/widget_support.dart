import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFeildStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle HeadlineTextFeildStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 24.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle LightTextFeildStyle() {
    return TextStyle(
      color: Colors.black38,
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle SemiBoldTextFeildStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle SecondLigntTextFeildStyle() {
    return TextStyle(
      color: const Color.fromARGB(255, 65, 64, 64),
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

  //for horizontal foos
  static TextStyle HoriboldTextFeildStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle ThirdLigntTextFeildStyle() {
    return TextStyle(
      color: const Color.fromARGB(255, 255, 215, 0), // Bright gold
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }
}
