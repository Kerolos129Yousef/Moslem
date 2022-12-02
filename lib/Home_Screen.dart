import 'package:flutter/material.dart';
import 'package:moslem/Home/hadeth/hadeth_tap.dart';
import 'package:moslem/Home/setting/Setting_tap.dart';
import 'package:moslem/my_theme.dart';
import 'package:moslem/Home/quran/quran_tap.dart';
import 'package:moslem/Home/radio/radio_tap.dart';
import 'package:moslem/Home/tasbeh/tasbeh_tap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:moslem/Home/providers/setting_provider.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingProvider=Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingProvider.getMainBackGround()),fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              AppLocalizations.of(context)!.appTitle,
            ),
          ),
        ),
        body: taps[selectedIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/ic_moshaf.png")),
                  label: AppLocalizations.of(context)!.quranTitle),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/ic_ahadeth.png")),
                  label: AppLocalizations.of(context)!.hadethTitle),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/ic_sebha.png")),
                  label: AppLocalizations.of(context)!.tasbehTitle),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/ic_radio.png")),
                  label: AppLocalizations.of(context)!.radioTitle),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settingTitle),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> taps = [QuranTap(), HadethTap(), TasbehTap(), RadioTap(),SettingTap()];
}
