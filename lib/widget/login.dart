import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';
import 'package:gap/gap.dart';
import '../utils/font_style.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Styles.bgColor
      ),
      child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              child: Hero(
                tag:'logo',
                child: Image.asset(
                  "assets/images/megasplash.png",
                  fit:BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            const Gap(20),
            Text("Mega Splash",style:Styles.headLineStyle1.copyWith(fontSize: 38)),
            const Gap(20),
            Container(
              padding:EdgeInsets.symmetric(horizontal: 40),
              child: Text("Aliquam ante risus, dictum in laoreet imperdiet, aliquet in dui. Aeneano rnare non risus, dictum in laoreet imperdiet,  erat.",textAlign: TextAlign.center,style:Styles.headLineStyle4)),
            const Gap(30),
            SignInButton(
            buttonType: ButtonType.google,
            buttonSize: ButtonSize.large,
            onPressed: () {
              // print('google');
            }),
            const Gap(15),
            SignInButton(
            buttonType: ButtonType.facebook,
            buttonSize: ButtonSize.large,
            onPressed: () {
              // print('facebook');
            }),
            const Gap(20),
            Text("Already have an account ? Sign in",style:Styles.headLineStyle4)
        ],),
      )
    );
  }
}