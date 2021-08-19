
import 'package:altshulers_website/models/glass_card.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      padding: EdgeInsets.only(
        top: kDefaultPadding,
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      borderRadius: BorderRadius.circular(20),
      borderWidth: 1,
      borderColor: kDefaultBorderColor,
      color: kCardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                bottom: kDefaultPadding / 1.5, top: kDefaultPadding / 2),
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
      ),
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
          Icon(
            Icons.check,
            color: kPrimaryColor,
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(text),
        ],
      ),
    );
  }
}
