import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Text"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText("Saksham Chauhan",
                      textStyle: TextStyle(fontSize: 22)),
                  ColorizeAnimatedText("AJNABEE",
                      textStyle: TextStyle(fontSize: 22),
                      colors: Colors.accents),
                  RotateAnimatedText("Hello",textStyle: TextStyle(fontSize: 22),),
                  RotateAnimatedText("Big",textStyle: TextStyle(fontSize: 22),),
                  RotateAnimatedText("World",textStyle: TextStyle(fontSize: 22),),

                ],
                isRepeatingAnimation: true,
              ),
            )
          ],
        ));
  }
}
