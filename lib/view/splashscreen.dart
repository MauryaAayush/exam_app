import 'package:flutter/material.dart';

void main()
{
  runApp(const Splashscreen());
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed('/home');
            });
          },
          child: Container(
            height: height,
            width: width,
            child: Image.asset('assets/Images/Logo.png'),

          ),
        ),
      ),



    );
  }
}
