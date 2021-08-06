import 'package:altshulers_website/models/Recomendation.dart';
import 'package:altshulers_website/screens/home/components/recomendatio_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Recomendations extends StatelessWidget {
  const Recomendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recommendations', style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demoRecommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: RecomendationCard(recommendation: demoRecommendations[index],),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}