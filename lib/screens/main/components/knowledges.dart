import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding),
          child: Text(
            'Knowlege',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: 'Flutter, Dart'),
        KnowledgeText(text: 'Flutter, Dart'),
        KnowledgeText(text: 'Flutter, Dart'),
        KnowledgeText(text: 'Flutter, Dart'),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(text),
        ],
      ),
    );
  }
}
