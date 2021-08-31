import 'package:altshulers_website/models/Recomendation.dart';
import 'package:altshulers_website/models/glass_card.dart';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecomendationCard extends StatelessWidget {
  const RecomendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recommendation.name!,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  recommendation.source!,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                recommendation.text!,
                style: Theme.of(context).textTheme.bodyText2,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
