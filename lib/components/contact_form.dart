import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:my_portfolio/utils.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({Key? key}) : super(key: key);

  sendEmail(String subject, String body, String recipeintEmail) async {
    final Email email = Email(
      body: body,
      subject: subject,
      recipients: [recipeintEmail],
      //cc: ['cc@example.com],
      // bcc:['bcc@example.com],
      // attachmentPaths: ['/path/to/attachment.zip],
      isHTML: false,
    );
    await FlutterEmailSender.send(email);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Get In Touch With Me',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 10, 250, 218),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: Utils.isMobile(context)
              ? Utils.mdqw(context) * 0.85
              : Utils.mdqw(context) / 2,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 10, 250, 218),
                  blurRadius: 4,
                  spreadRadius: 2,
                )
              ],
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(255, 47, 47, 47),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Name',
                    style: TextStyle(
                      color: Color.fromARGB(255, 10, 250, 218),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter Your Name',
                          hintStyle: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 10, 250, 218),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 10, 250, 218),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 10, 250, 218),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 10, 250, 218),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                    ),
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(
                      color: Color.fromARGB(255, 10, 250, 218),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter Your Email',
                          hintStyle: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 10, 250, 218),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 10, 250, 218),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.email_rounded,
                            color: Color.fromARGB(255, 10, 250, 218),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 10, 250, 218),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                    ),
                  ),
                  const Text(
                    'Message',
                    style: TextStyle(
                      color: Color.fromARGB(255, 10, 250, 218),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      minLines: 10,
                      maxLines: 15,
                      decoration: InputDecoration(
                          hintText: 'Enter Your Message',
                          hintStyle: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 10, 250, 218),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 10, 250, 218),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 10, 250, 218),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(10.0)),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 10, 250, 218),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
