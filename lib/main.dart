import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:moslem/Home/providers/setting_provider.dart';
import 'package:moslem/Home_Screen.dart';
import 'package:moslem/my_theme.dart';
import 'package:provider/provider.dart';
import 'Home/hadeth/Hadeth_details.dart';
import 'Home/quran/Sura_details.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(ChangeNotifierProvider<SettingProvider>(
      create: (BuildContext){
        return SettingProvider();
      },
      child: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider= Provider.of<SettingProvider>(context);
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('ar', ''), // Spanish, no country code
      ],
      locale: Locale(settingsProvider.currentLange),
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: settingsProvider.currentTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetails.routeName: (_) => SuraDetails(),
        HadethDetails.routeName:(_)=>HadethDetails()
      },
    );
  }
}
