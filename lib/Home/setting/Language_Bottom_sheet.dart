import 'package:flutter/material.dart';
import 'package:moslem/Home/providers/setting_provider.dart';
import 'package:provider/provider.dart';

class LangBottomSheet extends StatefulWidget {

  @override
  State<LangBottomSheet> createState() => _LangBottomSheetState();
}

class _LangBottomSheetState extends State<LangBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          InkWell(
              onTap: (){
                 settingProvider.changeLanguage("ar");
              },
              child:settingProvider.currentLange=="ar"? getSelectedItem("العربيه"):getUnSelectedItem("العربيه")
          ),
          SizedBox(height: 10,),
          InkWell(
              onTap: (){
                settingProvider.changeLanguage("en");
              },
              child:settingProvider.currentLange=="en"? getSelectedItem("English"):getUnSelectedItem("English")
          )
        ],
      ),
    );
  }

  Widget getSelectedItem(text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style:Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).primaryColor)),
        Icon(Icons.check,color: Theme.of(context).primaryColor,)
      ],
    );
  }

  Widget getUnSelectedItem(text){
   return Row(
      children: [
        Text(text,style:Theme.of(context).textTheme.headline5,textDirection: TextDirection.rtl,),
      ],
    );
  }
}
