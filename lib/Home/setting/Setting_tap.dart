import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:moslem/Home/providers/setting_provider.dart';
import 'package:provider/provider.dart';
import 'Language_Bottom_sheet.dart';
import 'Theme_Bottom_sheet.dart';

class SettingTap extends StatefulWidget {
  @override
  State<SettingTap> createState() => _SettingTapState();
}

class _SettingTapState extends State<SettingTap> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(left: 2),
            child: Text(
              AppLocalizations.of(context)!.language,
              style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 4,),
          InkWell(
            onTap: (){
             showLanguageBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Text(settingProvider.currentLange=="ar"?"العربيه":"English")),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 2),
            child: Text(
              AppLocalizations.of(context)!.theme,
              style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 4,),
          InkWell(
            onTap: (){
              showThemeBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Text(AppLocalizations.of(context)!.light)),
          )
        ],
      ),
    );
  }
  void showThemeBottomSheet(){
    showModalBottomSheet(context: context, builder: (buildContext){
      return ThemeBottomSheet();
    });
  }
  void showLanguageBottomSheet(){
    showModalBottomSheet(context: context, builder: (buildContext){
      return LangBottomSheet();
    });
  }
}
