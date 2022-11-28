import 'package:flutter/material.dart';
import 'package:moslem/Home/hadeth/hadeth_tap.dart';

class HadethDetails extends StatefulWidget {
static final String routeName = "HadethDetails";

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assests/images/background_pattren.png"),
              fit: BoxFit.fill)),
      child: Scaffold(

        appBar: AppBar(
          title: Text(args.title.trim()),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 70),
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white
          ),
          child: ListView(
            children: [
              SizedBox(height: 30,),
              Text(args.content,style: TextStyle(

              ),textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}
