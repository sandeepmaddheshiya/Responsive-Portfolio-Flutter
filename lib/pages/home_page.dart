import 'package:flutter/material.dart';

import '../components/contact_form.dart';
import '../components/footer.dart';
import '../components/home_page_actions.dart';
import '../components/home_page_body.dart';
import '../components/more_about_me.dart';
import '../components/my_drawer.dart';
import '../components/recent_projects.dart';
import '../components/social_icon_bar.dart';
import '../components/top_skills.dart';
import '../utils.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final ScrollController myScrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 88, 82, 82),
      key: _scaffoldKey,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 47, 47, 47)),
        title: const Text(
          'PORTFOLIO',
          style: TextStyle(
            fontSize: 42,
            color: Color.fromARGB(255, 47, 47, 47),
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 10, 250, 218),
        toolbarHeight: 66,
        elevation: 2,
        actions: [
          Utils.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Color.fromARGB(255, 47, 47, 47),
                      size: 30,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                )
              : HomePageActions(
                  sc: myScrollController,
                ),
        ],
      ),
      endDrawer: Utils.isMobile(context)
          ? MyDrawer(
              sc: myScrollController,
            )
          : null,
      floatingActionButton: FloatingActionButton(
        mini: Utils.isMobile(context) ? true : false,
        onPressed: () {
          myScrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeIn,
          );
        },
        child: Icon(Icons.arrow_circle_up_rounded),
        backgroundColor: Color.fromARGB(255, 10, 250, 218),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: myScrollController,
              child: const Column(
                children: [
                  Header1(),
                  MoreAboutMe(),
                  SizedBox(height: 50),
                  TopSkills(),
                  SizedBox(height: 50),
                  RecentProjects(),
                  SizedBox(height: 50),
                  ContactForm(),
                  SizedBox(height: 50),
                  Footer(),
                  SizedBox(height: 20),
                ],
              ),
            ),
            const SocialIconsBar(),
          ],
        ),
      ),
    );
  }
}
