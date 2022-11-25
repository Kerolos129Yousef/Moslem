import 'package:flutter/material.dart';
import 'package:moslem/Home/hadeth/hadeth_tap.dart';
import 'package:moslem/my_theme.dart';
import 'package:moslem/Home/quran/quran_tap.dart';
import 'package:moslem/Home/radio/radio_tap.dart';
import 'package:moslem/Home/tasbeh/tasbeh_tap.dart';

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
              image: AssetImage("assests/images/background_pattren.png"),fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Muslem",
            ),
          ),
        ),
        body: taps[selectedIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/ic_moshaf.png")),
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/ic_ahadeth.png")),
                  label: "Hadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/ic_sebha.png")),
                  label: "Tasabeh"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/ic_radio.png")),
                  label: "Radio"),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> taps = [QuranTap(), HadethTap(), TasbehTap(), RadioTap()];
}
