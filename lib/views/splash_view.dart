import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'notes_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset("assets/images/to-do.png"),
      splashIconSize: 200,
      backgroundColor: Colors.black26,
      nextScreen:const NotesView(),
      disableNavigation: false,
      duration: 1000,
      animationDuration: const Duration(seconds: 1),
      pageTransitionType: PageTransitionType.bottomToTop,
      splashTransition: SplashTransition.scaleTransition,
    );
  }
}
