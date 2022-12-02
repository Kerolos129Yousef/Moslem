
import 'package:flutter/material.dart';
import 'package:moslem/Home/providers/setting_provider.dart';
import 'package:provider/provider.dart';
class TasbehTap extends StatefulWidget {
  @override
  State<TasbehTap> createState() => _TasbehTapState();
}

class _TasbehTapState extends State<TasbehTap> {
int counter = 0;
List<String> Elad3ia = ["سُبْحَانَ اللَّهِ.","سُبْحَانَ اللَّهِ وَبِحَمْدِهِ.",' سُبْحَانَ اللَّهِ وَبِحَمْدِهِ, سُبْحَانَ اللَّهِ الْعَظِيمِ.'," لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ."];
int count=0;
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Column(
      children: [
        Center(child: Image.asset(settingProvider.isDarkMode()?"assests/images/head_sebha_dark.png":"assests/images/head_sebha_logo.png")),
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.black12,
          onTap: () {
            counter++;
            if(counter%33==0){
              count++;
              if(count==Elad3ia.length)
                count=0;
            }
            print(counter);
            setState(() {

            });
          },
          child: Container(
              color: Colors.transparent,
              child: Center(child: Image.asset(settingProvider.isDarkMode()?"assests/images/body_sebha_dark.png":"assests/images/body_sebha_logo.png"))),
        )
        ,
        Container(
          margin: EdgeInsets.symmetric(vertical: 30),
            alignment: Alignment.center,
            child: Text("عدد التسبيحات",style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.w900
            ),)),
          Container(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text("$counter",style:TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20
              ) ,)),
        SizedBox(height: 25,),
        Container(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(25)
            ) ,
            child: Text('${Elad3ia[count]}',style: TextStyle(
              color: Colors.white
            ),))
      ],
    );
  }
}