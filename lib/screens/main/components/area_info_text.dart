import 'package:flutter/material.dart';

import '../../../constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({Key? key, required this.title, required this.text})
      : super(key: key);

  final String title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
        child: Text(
          '$title: $text',
          style: Theme.of(context).textTheme.bodyText1,
        ));
  }
}
