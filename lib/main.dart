import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app2/Radio.dart';
import 'package:flutter_app2/quranScreen.dart';

import 'Hadeeth.dart';
import 'Radio.dart';
import 'Sebha.dart';

void main() {
  runApp(MaterialApp(
    debugShowMaterialGrid: false,
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int currentindex;
  late int index;

  int num = 0;
  List<Widget> currentScreen = [
    RadioScreen(),
    Sebha(),
    HaddethScreen(),
    Home(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentindex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/bg3.png'),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
          ),
          title: Text(
            'اسلامي',
            style: TextStyle(color: Colors.black, fontSize: 35),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: currentScreen[currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white,
          iconSize: 35,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/radio.png')),
                label: 'الراديو'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/sebha.png')),
                label: 'السبحة'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/icons/quran-quran-svgrepo-com.png')),
                label: 'الاحاديث'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/quran.png')),
                label: 'القران')
          ],
          backgroundColor: Color.fromRGBO(183, 147, 95, 1),
        ),
      ),
    );
  }
}