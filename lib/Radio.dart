import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/radio.png'),
            )),
          ),
        ),
        Container(
          child: Text(
            'اذاعة القران الكريم',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/play.png'),
            )),
          ),
        ),
      ],
    );
  }
}
