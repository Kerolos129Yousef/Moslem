import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moslem/Home_Screen.dart';
import 'package:moslem/my_theme.dart';

import 'Home/hadeth/Hadeth_details.dart';
import 'Home/quran/Sura_details.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyTheme.lightTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetails.routeName: (_) => SuraDetails(),
        HadethDetails.routeName:(_)=>HadethDetails()
      },
    );
  }
}
