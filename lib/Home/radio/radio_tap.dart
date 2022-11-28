
import 'package:flutter/material.dart';

class RadioTap extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 150,),
        Image.asset("assests/images/radio_image.png"),

        Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Text("إذاعة القرآن الكريم",style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.w900
            ),)
        ),
        Container(
          padding: EdgeInsets.only(right: 10),
          //color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: (){

                },
                icon: Icon(Icons.arrow_left,size: 50,),
              ),
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: (){

                },
                icon: Icon(Icons.pause,size: 50,),
              ),
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: (){

                },
                icon: Icon(Icons.arrow_right,size: 50,),
              )
            ],
          ),
        )


      ],
    );
  }
}