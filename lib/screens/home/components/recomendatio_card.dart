import 'package:altshulers_website/models/Recomendation.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecomendationCard extends StatelessWidget {
  const RecomendationCard({
    Key? key, required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(recommendation.source!),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.6),
          ),
        ],
      ),
    );
  }
}