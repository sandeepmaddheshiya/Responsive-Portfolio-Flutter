import 'package:flutter/material.dart';
import 'package:my_portfolio/utils.dart';

class MoreAboutMe extends StatelessWidget {
  const MoreAboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Utils.isMobile(context) ? 40 : 80),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Center(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 10, 250, 218),
                        blurRadius: 8,
                        spreadRadius: 5,
                      ),
                    ],
                    // borderRadius: BorderRadius.circular(6),
                    color: Color.fromARGB(255, 10, 250, 218),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 47, 47, 47),
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Passionate Java & Flutter developer with 2 months of experience. Skilled in Java, Flutter, HTML/CSS, and problem-solving.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Projects include Chat Karo, login Signup UI, Expense Planner & To Do App in Flutter, Tic Tac Toe in Java, QR Generator in Python and much more available on my github profile. Currently learning FullStack Java and embracing my skills in Flutter Development.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Seeking new opportunities in Software Engineering.🚀💻',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
