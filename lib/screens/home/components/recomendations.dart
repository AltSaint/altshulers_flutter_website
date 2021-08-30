import 'package:altshulers_website/models/Recomendation.dart';
import 'package:altshulers_website/screens/home/components/recomendation_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class Recomendations extends StatelessWidget {
  const Recomendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: kDefaultPadding),
        Text(
          'Recomendations',
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
          ),
          mobileLarge: ProjectsGridView(
            crossAxisCount: 2,
            childAspectRatio: 2 / 1.8,
          ),
          tablet: ProjectsGridView(
            childAspectRatio: 1,
          ),
          desktop: ProjectsGridView(),
        ),
        const SizedBox(height: kDefaultPadding),
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 2 / 1.6,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demoRecommendations.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
        childAspectRatio: childAspectRatio,
        crossAxisCount: crossAxisCount,
      ),
      itemBuilder: (context, index) => RecomendationCard(
        recommendation: demoRecommendations[index],
      ),
    );
  }
}
