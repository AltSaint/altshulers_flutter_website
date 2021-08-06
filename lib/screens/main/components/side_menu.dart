import 'package:altshulers_website/constants.dart';
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
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(kDefaultPadding),
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
                    Skills(),
                    SizedBox(height: kDefaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: kDefaultPadding / 2,),
                    TextButton(
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
                            SvgPicture.asset('assets/icons/download.svg'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: kDefaultPadding ),
                      color: const Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/github.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/twitter.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/behance.svg'),
                          ),
                          Spacer(),
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
