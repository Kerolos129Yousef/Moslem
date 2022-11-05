import 'package:flutter/material.dart';
import 'package:moslem/hadeth_tap.dart';
import 'package:moslem/my_colors.dart';
import 'package:moslem/quran_tap.dart';
import 'package:moslem/radio_tap.dart';
import 'package:moslem/tasbeh_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

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
              "Muslem",
              style: TextStyle(color: Colors.black,fontSize: 25),


            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: taps[selectedIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor:MyColors.primaryColor
          ),
          child: BottomNavigationBar(
          currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {

              });

            },
            selectedIconTheme: IconThemeData(
                size: 28,
              //color: Colors.black
            ),
            unselectedIconTheme: IconThemeData(
                size: 26,
                color: Colors.white
            ),
            selectedLabelStyle: TextStyle(
                color: Colors.black
            ),
            selectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assests/images/ic_moshaf.png")) ,label:"Quran" ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assests/images/ic_ahadeth.png")) ,label:"Hadeth" ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assests/images/ic_sebha.png")) ,label:"Tasabeh" ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assests/images/ic_radio.png")) ,label:"Radio" ),
            ],
          ),
        ),
      ),
    );
  }
  List<Widget> taps = [QuranTap(),HadethTap(),TasbehTap(),RadioTap()];
}
