import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/utils.dart';

class Header1 extends StatelessWidget {
  const Header1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            Padding(
              padding: Utils.isMobile(context)
                  ? const EdgeInsets.all(5.0)
                  : const EdgeInsets.only(
                      top: 150, bottom: 50, right: 10, left: 100),
              child: SizedBox(
                height: Utils.isMobile(context) ? 400 : 500,
                width: Utils.isMobile(context) ? 400 : 500,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(500),
                  child: Image.network('https://i.ibb.co/X5X4NCj/profile.png'),
                ),
              ),
            ),
            SizedBox(
              width: Utils.isMobile(context)
                  ? Utils.mdqw(context)
                  : Utils.mdqw(context) / 2,
              height: Utils.isMobile(context)
                  ? Utils.mdqh(context) / 2
                  : Utils.mdqh(context) - 70,
              child: Center(
                child: SizedBox(
                  height: Utils.isMobile(context)
                      ? 200 / (Utils.mdqw(context) * 0.0025)
                      : 180,
                  width: Utils.isMobile(context)
                      ? Utils.mdqw(context) * 0.85
                      : 520,
                  child: Wrap(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 88, 82, 82),
                              blurRadius: 8,
                              spreadRadius: 5,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(6),
                          color: const Color.fromARGB(255, 88, 82, 82),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text(
                                'SANDEEP MADDHESHIYA',
                                style: TextStyle(
                                  fontSize: 42,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: SizedBox(
                                child: Row(
                                  children: [_fade2()],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '''In the World of Code and Delight,

Java Full Stack says, "Don't panic, I've got your back!"
Cross-Platform Flutter dances on all devices, no slack.
UI/UX struts the runway, making pixels fall in love,
While bugs and glitches play hide-and-seek, far, far above.

But fear not, for we're the tech dream team,
Bringing laughter and magic, like a whimsical meme.
With keyboards clacking and creativity untamed,
In this digital circus, we'll always be acclaimed!''',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Widget _fade1() {
  //   return SizedBox(
  //     width: 250.0,
  //     child: DefaultTextStyle(
  //       style: const TextStyle(
  //         fontSize: 30.0,
  //         fontFamily: 'Bobbers',
  //       ),
  //       child: AnimatedTextKit(
  //         animatedTexts: [
  //           TyperAnimatedText('JAVA'),
  //           TyperAnimatedText('FLUTTER,'),
  //         ],
  //         onTap: () {
  //           print("Tap Event");
  //         },
  //       ),
  //     ),
  //   );
  // }

  Widget _fade2() {
    return SizedBox(
      width: 300,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,
          fontFamily: 'Bobbers',
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            // TyperAnimatedText()),
            TyperAnimatedText(
              'JAVA DEVELOPER',
              textStyle: const TextStyle(fontWeight: FontWeight.w300),
            ),
            TyperAnimatedText(
              'FLUTTER DEVELOPER',
              textStyle: const TextStyle(fontWeight: FontWeight.w300),
            ),
            TyperAnimatedText(
              'UI/UX DESIGNER',
              textStyle: const TextStyle(fontWeight: FontWeight.w300),
            ),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }
}
