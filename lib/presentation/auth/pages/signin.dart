import 'package:flutter/material.dart';
import 'package:flutter_spotify/common/widgets/appbar/app_bar.dart';
import 'package:flutter_spotify/common/widgets/button/basic_app_button.dart';
import 'package:flutter_spotify/core/config/assets/images_extention.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _registerText(context),
      appBar: BassicApbar(
        title: SvgPicture.asset(ImagesExtention.logoAppSpotify, height: 40, width: 40,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _signInText(),
              const SizedBox(height: 25,),
              _supportText(context),
              const SizedBox(height: 25,),
              _formFullNameorEmail(context),
              const SizedBox(height: 20,),
              _formPassword(context),
              const SizedBox(height: 20,),
              BasicAppButton(onPressed: (){},
                  title: 'Sign In'),
              const SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
  Widget _signInText(){
    return const Text(
      'Sign In',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    );
  }
  Widget _formFullNameorEmail(BuildContext context){
    return TextField(
      decoration: const InputDecoration(
          hintText: 'Full Name Or Email'
      ).applyDefaults(
          Theme.of(context).inputDecorationTheme
      ),
    );
  }
  Widget _formEmail(BuildContext context){
    return TextField(
      decoration: const InputDecoration(
          hintText: 'Enter Email'
      ).applyDefaults(
          Theme.of(context).inputDecorationTheme
      ),
    );
  }
  Widget _formPassword(BuildContext context){
    return TextField(
      decoration: const InputDecoration(
          hintText: 'Password'
      ).applyDefaults(
          Theme.of(context).inputDecorationTheme
      ),
    );
  }
  Widget  _registerText(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Not a member ?',
            style: TextStyle( fontWeight: FontWeight.w500,
                fontSize: 14
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignIn()));
            },
            child: const Text(' Register Now',
              style: TextStyle( fontWeight: FontWeight.w500,
                  color: Color(0xff288CE9),
                  fontSize: 14
              ),
            ),
          ),

        ],
      ),
    );
  }
  Widget  _supportText(BuildContext context){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('If You Need Any Support',
            style: TextStyle( fontWeight: FontWeight.w500,
                fontSize: 14
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: const Text(' Click Here',
              style: TextStyle( fontWeight: FontWeight.w500,
                  color: Color(0xff288CE9),
                  fontSize: 14
              ),
            ),
          ),
        ],
      ),
    );
  }
}
