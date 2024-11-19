import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/widgets/button/basic_app_button.dart';
import '../../../core/config/assets/images_extention.dart';
import '../../../core/config/theme/app_colors.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(ImagesExtention.chooseModeBG),
                )
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(ImagesExtention.logoAppSpotify),
                ),
                Spacer(),
                const Text('Choose Mode', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xff30393C).withOpacity(0.5),
                                shape: BoxShape.circle,
                              ),
                              child: SvgPicture.asset(ImagesExtention.moon, fit: BoxFit.none,),
                            ),
                          ),
                        ),
                        const  SizedBox(height: 15,),
                        const Text('Dark Mode', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 17,
                        ),),
                      ],
                    ),
                    const SizedBox(width: 40,),
                    Column(
                      children: [
                        ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xff30393C).withOpacity(0.5),
                                shape: BoxShape.circle,
                              ),
                              child: SvgPicture.asset(ImagesExtention.sun, fit: BoxFit.none,),
                            ),
                          ),
                        ),
                        const  SizedBox(height: 15,),
                        const Text('Light Mode', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 17,
                        ),),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 50,),
                BasicAppButton(onPressed: (){

                }, title: 'Continue')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
