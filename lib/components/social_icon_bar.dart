import 'package:flutter/material.dart';
import 'package:my_portfolio/components/social_icon.dart';

import '../utils.dart';

class SocialIconsBar extends StatelessWidget {
  const SocialIconsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 5,
      top: Utils.mdqh(context) * 0.2,
      child: const SizedBox(
        height: 300,
        width: 35,
        child: Column(
          children: [
            SocialIcon(
                imgURL: 'https://i.ibb.co/zZRSZGJ/icons8-instagram.gif',
                urlLaunch: 'https://www.instagram.com/itz___s_a_n_d_y___/'),
            SocialIcon(
                imgURL: 'https://i.ibb.co/p0VpC4j/ezgif-5-fc95797a52.gif',
                urlLaunch:
                    'https://www.facebook.com/profile.php?id=100018820846914'),
            SocialIcon(
                imgURL: 'https://i.ibb.co/QPF86Sf/icons8-linkedin-circled.gif',
                urlLaunch: 'https://www.linkedin.com/in/sandeepmaddheshiya/'),
            SocialIcon(
                imgURL: 'https://i.ibb.co/6gf1RhC/icons8-github.gif',
                urlLaunch: 'https://github.com/sandeepmaddheshiya'),
          ],
        ),
      ),
    );
  }
}
