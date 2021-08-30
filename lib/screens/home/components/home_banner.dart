import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     color: kDarkColor.withOpacity(0.1),
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover my Amazing \nArt Space!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: kDefaultPadding / 2),
                MyBuildAnimatedText(),
                SizedBox(height: kDefaultPadding),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FluterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: kDefaultPadding / 2),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: kDefaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FluterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      pause: Duration(seconds: 2),
      animatedTexts: [
        TypewriterAnimatedText("'Insert some pretentious text here'",
            speed: Duration(milliseconds: 100)),
        TypewriterAnimatedText("'Insert other some pretentious text here'",
            speed: Duration(milliseconds: 100)),
        TypewriterAnimatedText("'Insert other some pretentious text here'",
            speed: Duration(milliseconds: 100)),
      ],
    );
  }
}

class FluterCodedText extends StatelessWidget {
  const FluterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(
            text: 'flutter',
            style: TextStyle(color: kPrimaryColor),
          ),
          TextSpan(text: '>'),
        ],
      ),
    );
  }
}
