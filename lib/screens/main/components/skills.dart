
import 'package:altshulers_website/components/animated_progress_indicator.dart';
import 'package:altshulers_website/models/glass_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      padding: EdgeInsets.all(kDefaultPadding),
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
              'Skills',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.8,
                  label: 'Flutter',
                ),
              ),
              SizedBox(width: kDefaultPadding),
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.72,
                  label: 'Flutter',
                ),
              ),
              SizedBox(width: kDefaultPadding),
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.65,
                  label: 'Flutter',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
