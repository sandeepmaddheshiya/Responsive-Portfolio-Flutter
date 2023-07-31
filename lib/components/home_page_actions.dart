import 'package:flutter/material.dart';
import 'package:my_portfolio/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageActions extends StatelessWidget {
  final ScrollController sc;
  const HomePageActions({Key? key, required this.sc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = Utils.isMobile(context);
    return isMobile
        ? Column(
            children: getWidgets(sc, context, isMobile: true),
          )
        : Row(
            children: getWidgets(sc, context),
          );
  }

  List<Widget> getWidgets(ScrollController sc, BuildContext context,
      {bool isMobile = false}) {
    int scrollDur = isMobile ? 800 : 500;
    return [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            sc.animateTo(
              isMobile ? 1000 : 650,
              duration: Duration(milliseconds: scrollDur),
              curve: Curves.easeIn,
            );
          },
          child: const Text(
            'About',
            style: TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 47, 47, 47),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            sc.animateTo(
              isMobile ? 1450 : 1000,
              duration: Duration(milliseconds: scrollDur),
              curve: Curves.easeIn,
            );
          },
          child: const Text(
            'Skills',
            style: TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 47, 47, 47),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            sc.animateTo(
              isMobile ? 2100 : 1500,
              duration: Duration(milliseconds: scrollDur),
              curve: Curves.easeIn,
            );
          },
          child: const Text(
            'Projects',
            style: TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 47, 47, 47),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            sc.animateTo(
              isMobile ? 4000 : 2500,
              duration: Duration(milliseconds: scrollDur),
              curve: Curves.easeIn,
            );
          },
          child: const Text(
            'Contact',
            style: TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 47, 47, 47),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            _launchResume();
          },
          child: const Text(
            'Resume',
            style: TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 47, 47, 47),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      )
    ];
  }

  final String urlLaunchRes =
      'https://drive.google.com/file/d/1lBQvbfPWbKQu9s6hEFFbJajPbX617zUW/view';
  Future<void> _launchResume() async {
    if (!await launchUrl(Uri.parse(urlLaunchRes))) {
      throw Exception('Could not launch ${Uri.parse(urlLaunchRes)}');
    }
  }
}
