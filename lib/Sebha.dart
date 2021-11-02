import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.height * .1,
                    MediaQuery.of(context).size.height * .09,
                    0,
                    0),
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width * .1,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/head_sebha.png'))),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .1),
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/body_sebha.png'))),
              ),
            ],
          ),
        ),
        Container(
            child: Text(
          'عدد التسبيحات',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        )),
        Container(
            margin: EdgeInsets.only(bottom: 13),
            alignment: AlignmentDirectional.center,
            height: MediaQuery.of(context).size.height * .13,
            width: MediaQuery.of(context).size.width * .2,
            child: Text(
              '$num',
              style: TextStyle(fontSize: 19),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(183, 146, 95, .6))),
        InkWell(
          onTap: () {
            num++;
            setState(() {});
          },
          child: Container(
              alignment: AlignmentDirectional.center,
              height: MediaQuery.of(context).size.height * .09,
              width: MediaQuery.of(context).size.width * .4,
              child: Text(
                'سبحان الله',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(183, 146, 95, 1))),
        ),
      ],
    );
  }
}
