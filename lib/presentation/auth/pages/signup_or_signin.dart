import 'package:flutter/material.dart';
import 'package:flutter_spotify/common/helpers/is_dark_mode.dart';
import 'package:flutter_spotify/common/widgets/button/basic_app_button.dart';
import 'package:flutter_spotify/core/config/assets/images_extention.dart';
import 'package:flutter_spotify/presentation/auth/pages/signin.dart';
import 'package:flutter_spotify/presentation/auth/pages/signup.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/widgets/appbar/app_bar.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BassicApbar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              ImagesExtention.topPattern
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
                ImagesExtention.bottomPattern
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
                ImagesExtention.authBG
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                      ImagesExtention.logoAppSpotify
                  ),
                  const SizedBox(height: 55,),
                  const Text('Enjoy Litening To Music',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26
                  ),),
                  const SizedBox(height: 21,),
                  const Text('Spotify is a proprietary Swedish audio streaming and media services provider ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                    ),
                  textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30,),

                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: BasicAppButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Signup()));
                              },
                              title: 'Register'),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignIn()));
                            },
                            child:  Text('Sign In',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: context.isDarkMode ? Colors.white : Colors.black,
                            ),
                            ),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
