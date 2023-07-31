import 'package:flutter/material.dart';
import 'package:my_portfolio/components/home_page_actions.dart';

class MyDrawer extends StatelessWidget {
  final ScrollController sc;
  const MyDrawer({Key? key, required this.sc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Color.fromARGB(255, 47, 47, 47),
          ),
        ),
      ),
      body: Center(child: HomePageActions(sc: sc)),
    );
  }
}
