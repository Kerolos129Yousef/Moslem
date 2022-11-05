import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "Home";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assests/images/background_pattren.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Moslem",
              style: TextStyle(color: Colors.black,fontSize: 25),


            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(
            size: 28,
            color: Colors.black
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.white
          ),
          selectedLabelStyle: TextStyle(
            color: Colors.black
          ),
          selectedItemColor: Colors.brown,
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assests/images/ic_moshaf.png")) ,label:"quran" ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assests/images/ic_ahadeth.png")) ,label:"ahadeth" ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assests/images/ic_sebha.png")) ,label:"sebha" ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assests/images/ic_radio.png")) ,label:"radio" ),


          ],
        ),
      ),
    );
  }
}
