import 'package:flutter/material.dart';
import 'package:my_portfolio/models/project_model.dart';
import 'package:my_portfolio/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel project;
  final String urlLaunchPrj;
  const ProjectCard(
      {Key? key, required this.project, required this.urlLaunchPrj})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 3,
            )
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SizedBox(
          height: !Utils.isMobile(context)
              ? Utils.mdqw(context) / 4
              : Utils.mdqw(context) * 1.2,
          width: !Utils.isMobile(context)
              ? Utils.mdqw(context) / 4
              : Utils.mdqw(context) * 0.9,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(project.imgURL),
              ),
              Text(
                project.projectName,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  child: Text(
                    project.shortDescription as String,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 6),
                child: TextButton(
                  child: const Text(
                    'Check it Out',
                    style: TextStyle(fontSize: 17),
                  ),
                  onPressed: () {
                    _launchPrj();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchPrj() async {
    if (!await launchUrl(Uri.parse(urlLaunchPrj))) {
      throw Exception('Could not launch ${Uri.parse(urlLaunchPrj)}');
    }
  }

  Widget _prjDes() {
    return Text(
      '{$project.shortDescription}',
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 16),
    );
  }
}
