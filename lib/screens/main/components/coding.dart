import 'package:altshulers_website/components/animated_progress_indicator.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(percentage: 0.7, label: 'Dart',),
        AnimatedLinearProgressIndicator(percentage: 0.5, label: 'Bruh',),
        AnimatedLinearProgressIndicator(percentage: 0.6, label: 'Memes',),
      ],
    );
  }
}

