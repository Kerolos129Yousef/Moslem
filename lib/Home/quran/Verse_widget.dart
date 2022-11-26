import 'package:flutter/material.dart';

class verseWidget extends StatelessWidget {
  @override
  String content;
  int index;
  verseWidget(this.content,this.index);
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Text(
         "$content {${index+1}}" ,
          style: Theme.of(context).textTheme.bodyText2,
          textAlign: TextAlign.center,
        ));
  }
}
