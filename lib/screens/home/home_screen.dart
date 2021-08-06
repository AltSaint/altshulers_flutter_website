import 'package:altshulers_website/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'components/heighlights_info.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/recomendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recomendations()
      ],
    );
  }
}