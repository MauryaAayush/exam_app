import 'package:exam_app/view/cartscreen.dart';
import 'package:exam_app/view/homescreen.dart';
import 'package:exam_app/view/productcreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',

      routes:  {
        '/' : (context) =>   const Homescreen(),
        '/second' : (context) =>   const Productscreen(),
        '/third' : (context) =>   const Cartscreen(),
      },

    );
  }
}

