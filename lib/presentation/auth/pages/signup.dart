import 'package:flutter/material.dart';
import 'package:flutter_spotify/common/helpers/is_dark_mode.dart';
import 'package:flutter_spotify/common/widgets/appbar/app_bar.dart';
import 'package:flutter_spotify/common/widgets/button/basic_app_button.dart';
import 'package:flutter_spotify/core/config/assets/images_extention.dart';
import 'package:flutter_spotify/presentation/auth/pages/signin.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _siginText(context),
      appBar: BassicApbar(
        title: SvgPicture.asset(ImagesExtention.logoAppSpotify, height: 40, width: 40,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _registerText(),
              const SizedBox(height: 50,),
              _formFullName(context),
              const SizedBox(height: 20,),
              _formEmail(context),
              const SizedBox(height: 20,),
              _formPassword(context),
              const SizedBox(height: 20,),
              BasicAppButton(onPressed: (){},
                  title: 'Create Account'),
              const SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
  Widget _registerText(){
    return const Text(
      'Register',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    );
  }
  Widget _formFullName(BuildContext context){
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Full Name'
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
  Widget  _siginText(BuildContext context){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Do You Have An Account?',
            style: TextStyle( fontWeight: FontWeight.w500,
                fontSize: 14
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignIn()));

            },
            child: const Text(' Sign In',
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
