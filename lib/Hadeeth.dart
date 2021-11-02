import 'package:flutter/material.dart';

class HaddethScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: Alignment.center,
            child: Image.asset(
                'assets/images/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png')),
        Divider(
          thickness: 4,
          color: Color.fromRGBO(183, 147, 95, 1),
        ),
        Container(
            child: Text(
          'الاحاديث',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )),
        Divider(
          thickness: 4,
          color: Color.fromRGBO(183, 147, 95, 1),
        ),
        Expanded(
          child: Container(
            child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  'حديث ${index + 1}',
                  textAlign: TextAlign.center,
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
