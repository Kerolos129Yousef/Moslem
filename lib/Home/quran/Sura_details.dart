import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moslem/Home/quran/Sura_name_widget.dart';
import 'package:moslem/Home/quran/Verse_widget.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraData;
    if (verses.isEmpty) readFile(args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assests/images/background_pattren.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: verses.isEmpty
              ? Column(
                  children: [
                    Spacer(),
                    Center(
                        child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    )),
                    Spacer()
                  ],
                )
              : Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 60),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView.separated(
                    itemBuilder: (_, index) {
                      return Container(
                          child: verseWidget(verses[index], index));
                    },
                    itemCount: verses.length,
                    separatorBuilder: (_, index) {
                      return Container(
                        height: 2,
                        width: double.infinity,
                        color: Theme.of(context).primaryColor,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                      );
                    },
                  ),
                )),
    );
  }

  void readFile(int index) async {
    String content =
        await rootBundle.loadString("assests/files/${index + 1}.txt");
    List<String> lines = content.split("\r\n");
    verses = lines;
    print(lines);
    setState(() {});
  }
}

class SuraData {
  int index;
  String title;
  SuraData(this.index, this.title);
}
