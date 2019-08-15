import 'package:flutter/material.dart';
import 'components/splash_component.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/splash_BG_0.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  colors: [
                    Colors.grey.withOpacity(0),
                    Colors.black54,
                    Colors.black
                  ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  stops: [0.0, 0.5, 0.8]),
            ),
            child: Center(child: AuthView()),
          ),
        ],
      ),
    );
  }
}
