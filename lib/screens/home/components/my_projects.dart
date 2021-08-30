import 'package:altshulers_website/models/Project.dart';
import 'package:altshulers_website/responsive.dart';
import 'package:altshulers_website/screens/home/components/project_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
          ),
          mobileLarge: ProjectsGridView(crossAxisCount: 2),
          tablet: ProjectsGridView(childAspectRatio: 1.1),
          desktop: ProjectsGridView(childAspectRatio: 2 / 1.6),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demoProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
        childAspectRatio: childAspectRatio,
        crossAxisCount: crossAxisCount,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demoProjects[index],
      ),
    );
  }
}
