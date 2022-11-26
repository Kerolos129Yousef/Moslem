import 'package:flutter/material.dart';

import 'Sura_details.dart';

class SuraWidget extends StatelessWidget {
  @override
  String Name;
  int index;
  SuraWidget(this.Name,this.index);
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetails.routeName,arguments: SuraData(index, Name));
      },
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          alignment: Alignment.center,
          child: Text(
            Name,
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center,
          )),
    );
  }
}
