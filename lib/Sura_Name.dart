import 'package:flutter/material.dart';

class Sura extends StatelessWidget {
  final String sura;
  final int aya;

  Sura(this.aya, this.sura);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            child: Text('${aya}',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            child: Text('${sura}',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        width: 3, color: Color.fromRGBO(183, 147, 95, 1)))),
          ),
        ),
      ],
    );
  }
}
