import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class FirstAnimation1 extends StatefulWidget {
  const FirstAnimation1({super.key});

  @override
  State<FirstAnimation1> createState() => _FirstAnimation1State();
}

class _FirstAnimation1State extends State<FirstAnimation1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WidgetAnimator(
            incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
                duration: const Duration(milliseconds: 800)),
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.deepPurple,
                ),
                RichText(
                  text: const TextSpan(
                    text: "welcome",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          WidgetAnimator(
            incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(
                duration: const Duration(milliseconds: 800)),
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.redAccent,
                ),
                RichText(
                  text: const TextSpan(
                    text: "welcome",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          WidgetAnimator(
            incomingEffect: WidgetTransitionEffects.incomingSlideInFromRight(
              duration: const Duration(
                milliseconds: 800,
              ),
              delay: Duration(milliseconds: 500),
            ),
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                ),
                RichText(
                  text: const TextSpan(
                    text: "welcome",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
