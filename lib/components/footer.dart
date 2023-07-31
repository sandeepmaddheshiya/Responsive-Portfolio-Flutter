import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '© Copyright 2023',
          style: TextStyle(
            color: Color.fromARGB(255, 10, 250, 218),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Built with ',
              style: TextStyle(
                color: Color.fromARGB(255, 10, 250, 218),
              ),
            ),
            const Text(
              '❣️',
            ),
            const Text(
              'by',
              style: TextStyle(
                color: Color.fromARGB(255, 10, 250, 218),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 10, 250, 218),
              ),
              child: const Text('Sandeep Maddheshiya'),
            ),
          ],
        )
      ],
    );
  }
}
