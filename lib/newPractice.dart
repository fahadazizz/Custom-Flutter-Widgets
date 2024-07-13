import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:animation_wrappers/animation_wrappers.dart';

class Animated_Splash_Screen extends StatelessWidget {
  void initState() {}
  final String image;
  Animated_Splash_Screen({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(children: [
          AnimationClass(image: image),
          const FadeIn(
            child: Text("This will be faded-in!"),
            duration: Duration(milliseconds: 250),
            curve: Curves.easeIn,
          ),
        ]),
      ),
    );
  }
}

class AnimationClass extends StatelessWidget {
  final String image;
  const AnimationClass({required this.image});
  @override
  Widget build(BuildContext context) {
    return FadedScaleAnimation(
      child: Container(child: Image.asset(image)),
    );
  }
}
