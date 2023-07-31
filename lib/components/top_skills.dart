import 'package:flutter/material.dart';
import 'package:my_portfolio/components/skill_card.dart';

import '../utils.dart';

class TopSkills extends StatelessWidget {
  const TopSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'My Top Skills',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 10, 250, 218),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Utils.isMobile(context) ? 10 : Utils.mdqw(context) / 4,
          ),
          child: const Wrap(
            children: [
              SkillCard(
                url:
                    'https://cdn.iconscout.com/icon/free/png-256/flutter-2038877-1720090.png',
              ),
              SkillCard(
                url:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Dart-logo.png/900px-Dart-logo.png?20140316083713',
              ),
              SkillCard(
                  url:
                      'https://cdn4.iconfinder.com/data/icons/google-i-o-2016/512/google_firebase-2-512.png'),
              SkillCard(
                  url: 'https://cdn-icons-png.flaticon.com/512/226/226777.png'),
              SkillCard(
                  url:
                      'https://cdn.iconscout.com/icon/free/png-256/python-3521655-2945099.png'),
              SkillCard(
                  url:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Git_icon.svg/1024px-Git_icon.svg.png'),
              //new
              SkillCard(url: 'https://i.ibb.co/sKtDH88/C-Logo.png'),
              SkillCard(url: 'https://i.ibb.co/NFrdwdQ/ISO-C-Logo-svg.png'),
              SkillCard(
                  url:
                      'https://i.ibb.co/Kyz38mx/HTML5-logo-and-wordmark-svg.png'),
              SkillCard(url: 'https://i.ibb.co/zGHCJ4J/CSS-Logo.jpg'),
              SkillCard(url: 'https://i.ibb.co/DCxCnjG/Java-Script-logo.png'),
              SkillCard(url: 'https://i.ibb.co/L0XVJtn/Bootstrap-logo-svg.png'),
              SkillCard(
                  url: 'https://i.ibb.co/G2mn3Mw/1667px-Figma-logo-svg.png'),
              SkillCard(url: 'https://i.ibb.co/MRw85s8/download.png'),
              SkillCard(url: 'https://i.ibb.co/z5mdKbW/arduino-logo-1.png'),
            ],
          ),
        ),
      ],
    );
  }
}
