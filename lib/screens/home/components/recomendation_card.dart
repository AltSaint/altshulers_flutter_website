import 'dart:ui';

import 'package:altshulers_website/models/Recomendation.dart';

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
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
          child: Container(
            width: 400,
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 1.2,
                color: Colors.white.withOpacity(0.3),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
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
            ),
          ),
        ),
      ),
    );
  }
}
