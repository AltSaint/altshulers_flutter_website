import 'dart:ui';

import 'package:altshulers_website/constants.dart';
import 'package:altshulers_website/models/glass_card.dart';
import 'package:altshulers_website/screens/main/components/skills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 4),
      child: Drawer(
        elevation: 0,
        child: SafeArea(
          child: Column(
            children: [
              MyInfo(),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GlassCard(
                        padding: EdgeInsets.only(
                            top: kDefaultPadding,
                            left: kDefaultPadding,
                            right: kDefaultPadding,
                            bottom: kDefaultPadding / 2),
                        borderRadius: BorderRadius.circular(20),
                        borderWidth: 1,
                        borderColor: kDefaultBorderColor,
                        color: kCardColor,
                        child: Column(
                          children: [
                            AreaInfoText(
                              title: 'Residence',
                              text: 'Ukraine',
                            ),
                            AreaInfoText(
                              title: 'City',
                              text: 'Kyiv',
                            ),
                            AreaInfoText(
                              title: 'Age',
                              text: '21',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Skills(),
                      SizedBox(height: kDefaultPadding / 2),
                      Coding(),
                      SizedBox(height: kDefaultPadding / 2),
                      Knowledges(),
                      SizedBox(height: kDefaultPadding / 2),
                      GlassCard(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        borderRadius: BorderRadius.circular(20),
                        borderWidth: 1,
                        borderColor: kDefaultBorderColor,
                        color: kCardColor,
                        child: TextButton(
                          onPressed: () {},
                          child: FittedBox(
                            child: Row(
                              children: [
                                Text(
                                  'DOWNLOAD CV',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color),
                                ),
                                SizedBox(width: kDefaultPadding / 2),
                                SvgPicture.asset(
                                  'assets/icons/download.svg',
                                  color: kPrimaryColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GlassCard(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        borderRadius: BorderRadius.circular(20),
                        borderWidth: 1,
                        borderColor: kDefaultBorderColor,
                        color: kCardColor,
                        margin: EdgeInsets.only(top: kDefaultPadding / 2),
                        child: Row(
                          children: [
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/icons/linkedin.svg',
                                color: kPrimaryColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/icons/github.svg',
                                color: kPrimaryColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/icons/twitter.svg',
                                color: kPrimaryColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/icons/behance.svg',
                                color: kPrimaryColor,
                              ),
                            ),
                            Spacer(),
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
            ],
          ),
        ),
      ),
    );
  }
}
