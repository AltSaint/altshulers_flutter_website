import 'package:altshulers_website/models/Project.dart';
import 'package:altshulers_website/models/glass_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      padding: EdgeInsets.all(kDefaultPadding),
      borderRadius: BorderRadius.circular(20),
      borderWidth: 1,
      borderColor: kDefaultBorderColor,
      color: kCardColor,
      child: Padding(
        padding: const EdgeInsets.only(
            top: kDefaultPadding / 4,
            left: kDefaultPadding / 4,
            right: kDefaultPadding / 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title!,
              maxLines: 2,
              style: Theme.of(context).textTheme.headline6,
              overflow: TextOverflow.ellipsis,
            ),
            Spacer(),
            Text(
              project.description!,
              maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5),
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                final Project myProject = this.project;
                Navigator.of(context)
                    .pushNamed('/project_info', arguments: myProject);
              },
              child: GlassCard(
                padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
                borderRadius: BorderRadius.circular(20),
                borderWidth: 1,
                borderColor: kDefaultBorderColor,
                color: kCardColor,
                child: Text(
                  'Read More >>',
                  style: TextStyle(color: kPrimaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
