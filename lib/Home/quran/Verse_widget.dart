import 'package:flutter/material.dart';
import 'package:moslem/Home/providers/setting_provider.dart';
import 'package:provider/provider.dart';
class verseWidget extends StatelessWidget {

  @override
  String content;
  int index;
  verseWidget(this.content,this.index);
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Text(
         "$content {${index+1}}" ,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(color:settingProvider.isDarkMode()?Theme.of(context).primaryColor:Colors.black),
          textAlign: TextAlign.center,
        ));
  }
}
