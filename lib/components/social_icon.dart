import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcon extends StatelessWidget {
  final String imgURL;
  final String urlLaunch;

  const SocialIcon({Key? key, required this.imgURL, required this.urlLaunch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: () {
        _launchUrl();
      },
      child: Image.network(imgURL),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(urlLaunch))) {
      throw Exception('Could not launch ${Uri.parse(urlLaunch)}');
    }
  }
}
