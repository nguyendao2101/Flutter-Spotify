import 'package:flutter/material.dart';
import 'package:flutter_spotify/common/widgets/button/basic_app_button.dart';
import 'package:flutter_spotify/core/config/assets/images_extention.dart';
import 'package:flutter_spotify/core/config/theme/app_colors.dart';
import 'package:flutter_svg/svg.dart';

import '../../choose_mode/pages/choose_mode.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

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
                image: AssetImage(ImagesExtention.introBG),
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
                const Text('Enjog Listening To Music', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),),
                SizedBox(height: 21,),
                const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                  style: TextStyle(fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20,),
                BasicAppButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const ChooseMode()));
                }, title: 'Get Started')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
