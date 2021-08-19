import 'dart:ui';

import 'package:altshulers_website/models/glass_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: GlassCard(
        borderRadius: BorderRadius.circular(20),
        borderWidth: 1,
        borderColor: kDefaultBorderColor,
        color: kCardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2),
            Expanded(
              flex: 12,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kCardColor,
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 12),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/photo.png')),
                        border: Border.all(
                          width: 1.2,
                          color: kDefaultBorderColor,
                        )),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              'Yehor Altshuler',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text('Trainee Fluter Developer',
                style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
                textAlign: TextAlign.center),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
