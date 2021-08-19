import 'package:altshulers_website/constants.dart';
import 'package:altshulers_website/responsive.dart';
import 'package:flutter/material.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (Responsive.isDesktop(context))
          ? null
          : AppBar(
              backgroundColor: kBackgroundColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: (Responsive.isDesktop(context)) ? null : SideMenu(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: kDefaultPadding),
                      child: SideMenu(),
                    ),
                  ),
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          ...children
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
