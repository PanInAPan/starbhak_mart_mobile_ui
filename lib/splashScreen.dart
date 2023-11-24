import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:starbhak_mart_remake/nav.dart';

class MySplashScreen extends StatelessWidget {
  MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterSplashScreen.fadeIn(
          backgroundColor: Colors.white,
          onInit: () {
            debugPrint("On Init");
          },
          onEnd: () {
            debugPrint("On End");
          },
          childWidget: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset("assets/logo.png"),
          ),
          onAnimationEnd: () => debugPrint("On Fade In End"),
          nextScreen: const Nav(),
        ),
      ),
    );
  }
}
