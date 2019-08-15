import 'package:flutter/material.dart';
import 'package:spaced/src/theme/style.dart';

class ButtonWithImage extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final String imageURL;
  final Color textColor;
  ButtonWithImage(
      {@required this.buttonColor,
      @required this.buttonText,
      @required this.imageURL,
      this.textColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285,
      height: 62,
      decoration: BoxDecoration(
        color: this.buttonColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.grey,
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  this.imageURL,
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  this.buttonText,
                  style: buttonTextStyle.copyWith(color: this.textColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final Color textColor;

  Button(
      {@required this.buttonColor,
      @required this.buttonText,
      @required this.textColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285,
      height: 62,
      decoration: BoxDecoration(
        color: this.buttonColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: buttonSplashColor,
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                this.buttonText,
                style: buttonTextStyle.copyWith(color: this.textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
