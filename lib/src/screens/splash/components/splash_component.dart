import 'package:flutter/material.dart';
import 'package:spaced/src/theme/style.dart';
import 'package:spaced/src/components/buttons.dart';

class AuthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/Logo.png',
            width: 225,
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            'To space and back safely',
            style: logoSubText,
          ),
          SizedBox(
            height: 188,
          ),
          ButtonWithImage(
            buttonText: 'Continue with Google',
            buttonColor: Colors.white,
            imageURL: 'assets/images/google_logo.png',
            textColor: buttonColorDark,
          ),
          SizedBox(
            height: 13,
          ),
          Button(
              buttonColor: primaryColor,
              buttonText: 'Use email or phone instead',
              textColor: Colors.white),
          SizedBox(
            height: 50,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'Don\'t have an account? ',
                    style: normalTextStyle.copyWith(color: Colors.white)),
                TextSpan(
                    text: 'Register',
                    style: normalTextStyle.copyWith(color: primaryColor))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
