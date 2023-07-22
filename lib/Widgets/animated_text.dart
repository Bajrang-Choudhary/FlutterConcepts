import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

// We have added a package for these animations in pubspec.yaml named "animated_text_kit:"
class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ///////////////////
          AnimatedTextKit(animatedTexts: [
            TypewriterAnimatedText('Bajrang', textStyle: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            speed: const Duration(milliseconds: 200))
          ],
          totalRepeatCount: 4,
          displayFullTextOnTap: true,
          stopPauseOnTap: true,),
          ///////////////////
          AnimatedTextKit(animatedTexts: [
            RotateAnimatedText('Hello', textStyle:const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red),),
            RotateAnimatedText('Beautiful', textStyle:const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red),),
            RotateAnimatedText('World', textStyle:const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red),)
          ],),
          ////////////////////
          AnimatedTextKit(animatedTexts: [
            WavyAnimatedText('Hey!'),
            WavyAnimatedText('Programmer')
          ])

          
        ]),
      ),
    );
  }
}