import 'package:altshulers_website/components/animated_counter.dart';
import 'package:altshulers_website/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 119,
                        text: '+',
                      ),
                      label: 'Subscribers',
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 119,
                        text: '+',
                      ),
                      label: 'Subscribers',
                    ),
                  ],
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 119,
                        text: '+',
                      ),
                      label: 'Subscribers',
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 119,
                        text: '+',
                      ),
                      label: 'Subscribers',
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 119,
                    text: '+',
                  ),
                  label: 'Subscribers',
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 119,
                    text: '+',
                  ),
                  label: 'Subscribers',
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 119,
                    text: '+',
                  ),
                  label: 'Subscribers',
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 119,
                    text: '+',
                  ),
                  label: 'Subscribers',
                ),
              ],
            ),
    );
  }
}
