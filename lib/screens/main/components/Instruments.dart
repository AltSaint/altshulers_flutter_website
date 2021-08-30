import 'package:altshulers_website/components/animated_progress_indicator.dart';
import 'package:altshulers_website/models/glass_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      padding: EdgeInsets.only(
          left: kDefaultPadding, right: kDefaultPadding, top: kDefaultPadding),
      borderRadius: BorderRadius.circular(20),
      borderWidth: 1,
      borderColor: kDefaultBorderColor,
      color: kCardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                bottom: kDefaultPadding, top: kDefaultPadding / 2),
            child: Text(
              'Instruments',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          AnimatedLinearProgressIndicator(
            percentage: 0.5,
            label: 'VS Code',
          ),
          AnimatedLinearProgressIndicator(
            percentage: 0.5,
            label: 'GIT',
          ),
        ],
      ),
    );
  }
}
