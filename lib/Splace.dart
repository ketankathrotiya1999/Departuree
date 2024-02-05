import 'dart:async';

import 'package:departuree/MainScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    MainScreen()
            )
        )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
            'https://cdn.lazyshop.com/files/273d4985-ae97-40da-84b1-98340e6f292c/product/af53b9b3e2a36d44099f94c33298272e.jpeg?x-oss-process=style%2Fthumb', fit: BoxFit.cover,
          height: double.infinity,
           ),
      ),
    );
  }
}
