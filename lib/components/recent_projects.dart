import 'package:flutter/material.dart';
import 'package:my_portfolio/components/project_card.dart';
import 'package:my_portfolio/constants.dart';

class RecentProjects extends StatelessWidget {
  const RecentProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Some of my Recent Projects',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 10, 250, 218),
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            ProjectCard(
                project: Constants.projects[0],
                urlLaunchPrj:
                    'https://github.com/sandeepmaddheshiya/Chat_Karo_v1.0'),
            ProjectCard(
                project: Constants.projects[1],
                urlLaunchPrj:
                    'https://github.com/sandeepmaddheshiya/QuizApp-Flutter-'),
            ProjectCard(
                project: Constants.projects[2],
                urlLaunchPrj:
                    'https://github.com/sandeepmaddheshiya/Calculator-Flutter'),
          ],
        ),
      ],
    );
  }
}
