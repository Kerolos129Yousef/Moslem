import 'package:flutter/material.dart';
import 'package:moslem/Home/hadeth/Hadeth_details.dart';

import 'hadeth_tap.dart';

class HadethWidget extends StatelessWidget {
Hadeth hadeth ;
HadethWidget(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetails.routeName,arguments:hadeth );
      },
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 12),
          child: Text(hadeth.title,textAlign: TextAlign.center,style: TextStyle(
              fontWeight: FontWeight.w900
          ),)),
    );
  }
}
