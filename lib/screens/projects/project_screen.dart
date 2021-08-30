import 'dart:ui';

import 'package:altshulers_website/models/Project.dart';
import 'package:altshulers_website/models/glass_card.dart';
import 'package:altshulers_website/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final project = ModalRoute.of(context)?.settings.arguments as Project;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (Responsive.isMobile(context) ||
              Responsive.isMobileLarge(context)) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.cover),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 4),
                child: Center(
                  child: Container(
                    constraints: BoxConstraints(maxWidth: kMaxWidth),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding / 2),
                      child: SafeArea(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                width: 500,
                                height: 600,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(project.image!),
                                      fit: BoxFit.contain),
                                ),
                              ),
                              GlassCard(
                                padding: EdgeInsets.symmetric(
                                    vertical: kDefaultPadding,
                                    horizontal: kDefaultPadding),
                                borderRadius: BorderRadius.circular(20),
                                borderWidth: 1,
                                borderColor: kDefaultBorderColor,
                                color: kCardColor,
                                child: Column(
                                  children: [
                                    Text(project.title!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4),
                                    SizedBox(height: 20),
                                    Text(project.description!,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1),
                                    SizedBox(height: 20),
                                    Text(project.features!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1),
                                    SizedBox(height: 20),
                                    Text(project.note!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2
                                            ?.copyWith(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold)),
                                    SizedBox(height: 20),
                                    Column(
                                      children: [
                                        ElevatedButton(
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12))),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.green[600]),
                                          ),
                                          onPressed: () {},
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(Icons.android),
                                              const SizedBox(width: 16),
                                              Text('Download for android')
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        ElevatedButton(
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12))),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.black),
                                          ),
                                          onPressed: () {},
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 3.0),
                                                child: SvgPicture.asset(
                                                  'assets/icons/github.svg',
                                                  color: Colors.white,
                                                ),
                                              ),
                                              const SizedBox(width: 16),
                                              Text('Source code on GitHub')
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: kDefaultPadding,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else if (Responsive.isTablet(context)) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.cover),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 4),
                child: Center(
                  child: Container(
                    constraints: BoxConstraints(maxWidth: kMaxWidth),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding / 2),
                      child: SafeArea(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(project.image!),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: GlassCard(
                                  padding: EdgeInsets.symmetric(
                                      vertical: kDefaultPadding,
                                      horizontal: kDefaultPadding),
                                  borderRadius: BorderRadius.circular(20),
                                  borderWidth: 1,
                                  borderColor: kDefaultBorderColor,
                                  color: kCardColor,
                                  child: Column(
                                    children: [
                                      Text(project.title!,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4),
                                      SizedBox(height: 20),
                                      Text(project.description!,
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1),
                                      SizedBox(height: 20),
                                      Text(project.features!,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1),
                                      SizedBox(height: 20),
                                      Text(project.note!,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              ?.copyWith(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold)),
                                      SizedBox(height: 20),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12))),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.green[600]),
                                            ),
                                            onPressed: () {},
                                            child: Row(
                                              children: [
                                                Icon(Icons.android),
                                                const SizedBox(width: 16),
                                                Text('Download for android')
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12))),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.black),
                                            ),
                                            onPressed: () {},
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 3),
                                                  child: SvgPicture.asset(
                                                    'assets/icons/github.svg',
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                const SizedBox(width: 16),
                                                Text('Source code on GitHub')
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: kDefaultPadding,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.cover),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 4),
                child: Center(
                  child: Container(
                    constraints: BoxConstraints(maxWidth: kMaxWidth),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding / 2),
                      child: SafeArea(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(project.image!),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: GlassCard(
                                  padding: EdgeInsets.symmetric(
                                      vertical: kDefaultPadding,
                                      horizontal: kDefaultPadding),
                                  borderRadius: BorderRadius.circular(20),
                                  borderWidth: 1,
                                  borderColor: kDefaultBorderColor,
                                  color: kCardColor,
                                  child: Column(
                                    children: [
                                      Text(project.title!,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4),
                                      SizedBox(height: 20),
                                      Text(project.description!,
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1),
                                      SizedBox(height: 20),
                                      Text(project.features!,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1),
                                      SizedBox(height: 20),
                                      Text(project.note!,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              ?.copyWith(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold)),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12))),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.green[600]),
                                            ),
                                            onPressed: () {},
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons.android),
                                                const SizedBox(width: 16),
                                                Text('Download for android')
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 15),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12))),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.black),
                                            ),
                                            onPressed: () async {
                                              await canLaunch(
                                                      project.githubLink!)
                                                  ? await launch(
                                                      project.githubLink!)
                                                  : throw 'Could not launch ${project.githubLink}';
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/icons/github.svg',
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(width: 16),
                                                Text('Source code on GitHub')
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: kDefaultPadding,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
