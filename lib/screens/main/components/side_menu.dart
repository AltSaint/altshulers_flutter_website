import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:altshulers_website/constants.dart';
import 'package:altshulers_website/custom_icons.dart';
import 'package:altshulers_website/models/glass_card.dart';
import 'package:altshulers_website/screens/main/components/skills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'area_info_text.dart';
import 'Instruments.dart';
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
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: GlassCard(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AreaInfoText(
                                title: 'Country',
                                text: 'Ukraine',
                              ),
                              AreaInfoText(
                                title: 'City',
                                text: 'Kyiv',
                              ),
                              AreaInfoText(
                                title: 'Age',
                                text: '20',
                              ),
                              GestureDetector(
                                onTap: () async {
                                  await canLaunch("tel:+38 050 135 9497")
                                      ? await launch("tel:+38 050 135 9497")
                                      : throw 'Could not launch "tel:+38 050 135 9497"';
                                },
                                child: AreaInfoText(
                                  title: 'Phone Number',
                                  text: '050 135 9497',
                                ),
                              ),
                              GestureDetector(
                                onTap: () async {
                                  await canLaunch(
                                          "mailto:altshuleryehor@gmail.com")
                                      ? await launch(
                                          "mailto:altshuleryehor@gmail.com")
                                      : throw 'Could not launch "mailto:altshuleryehor@gmail.com"';
                                },
                                child: AreaInfoText(
                                  title: 'Email',
                                  text: 'altshuleryehor@gmail.com',
                                ),
                              ),
                              AreaInfoText(
                                title: 'Langueges',
                                text:
                                    'Russian - Native, English - Intermediate',
                              ),
                            ],
                          ),
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
                          onPressed: () async {
    await canLaunch('https://drive.google.com/file/d/1el-jpQN-hshEGtiX9DIIbCt7Qp5rSeTb/view?usp=sharing')
        ? await launch('https://drive.google.com/file/d/1el-jpQN-hshEGtiX9DIIbCt7Qp5rSeTb/view?usp=sharing')
        : throw 'Could not launch "https://drive.google.com/file/d/1el-jpQN-hshEGtiX9DIIbCt7Qp5rSeTb/view?usp=sharing"';
  },
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
                                  color: Colors.white,
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
                              hoverColor: Colors.blue,
                              onPressed: () async {
                                await canLaunch("https://t.me/yehoraltshuler")
                                    ? await launch(
                                        "https://t.me/yehoraltshuler")
                                    : throw 'Could not launch "https://t.me/yehoraltshuler"';
                              },
                              icon: Icon(
                                CustomIcons.telegram_plane,
                              ),
                            ),
                            IconButton(
                              hoverColor: Color(0xFF171515),
                              onPressed: () async {
                                await canLaunch("https://github.com/AltSaint")
                                    ? await launch(
                                        "https://github.com/AltSaint")
                                    : throw 'Could not launch "https://github.com/AltSaint"';
                              },
                              icon: Icon(
                                CustomIcons.github,
                              ),
                            ),
                            IconButton(
                              hoverColor: Color(0xFFC13584),
                              onPressed: () async {
                                await canLaunch(
                                        "https://instagram.com/yehoraltshuler")
                                    ? await launch(
                                        "https://instagram.com/yehoraltshuler")
                                    : throw 'Could not launch "https://instagram.com/yehoraltshuler"';
                              },
                              icon: Icon(
                                CustomIcons.instagram,
                              ),
                            ),
                            IconButton(
                              hoverColor: Color(0xFF25D366),
                              onPressed: () async {
                                await canLaunch("https://wa.me/380501359497")
                                    ? await launch("https://wa.me/380501359497")
                                    : throw 'Could not launch "https://wa.me/380501359497"';
                              },
                              icon: Icon(
                                CustomIcons.whatsapp,
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
