import 'package:flutter/material.dart';
import 'package:flutter_spotify/core/config/assets/images_extention.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(ImagesExtention.logoAppSpotify, height: 59, width: 196,),
      ),
    );
  }
}
