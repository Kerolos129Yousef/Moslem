
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hadeth_widget.dart';

class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> allahadeth = [];

  @override
  Widget build(BuildContext context) {
    if(allahadeth.isEmpty)
    readHadethFile();
    return allahadeth.isEmpty?Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor,)): Column(
      children: [
        Center(child: Image.asset("assests/images/hadeth_logo.png")),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(

            border: Border.symmetric(
              horizontal: BorderSide(
                width: 2,
                color: Theme.of(context).primaryColor
              )
            )
          ),
            child: Text("الأحاديث",style: TextStyle(fontSize: 20),)),
        Expanded(
          child: ListView.builder(itemBuilder: (_,index){
            return HadethWidget(allahadeth[index]);
          },itemCount: allahadeth.length,),
        ),
      ],
    );
  }

  void readHadethFile()async{
    String fileContent = await rootBundle.loadString("assests/files/ahadeth.txt");
    List<Hadeth> ahadethOfFile = [];
    List<String>allHadeth=fileContent.trim().split("#");
    for(int i=0 ;i <allHadeth.length;i++){
     List<String>HadethLine = allHadeth[i].trim().split("\n");
     String title = HadethLine[0];
     if(title.isEmpty)continue;
     print(title);
     HadethLine.removeAt(0);
     String content = HadethLine.join(' \n');
     print(content);
     Hadeth h = Hadeth(title, content);
     ahadethOfFile.add(h);
    }
    allahadeth=ahadethOfFile;
    setState(() {

    });
  }
}
class Hadeth{
  String title;
  String content;
  Hadeth(this.title,this.content);
}