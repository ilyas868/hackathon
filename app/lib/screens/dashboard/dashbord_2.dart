import 'package:app/screens/dashboard/lession2.dart';
import 'package:app/screens/dashboard/lessons.dart';
import 'package:app/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dashbaord2 extends StatelessWidget {
  const Dashbaord2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 45,),
              TextButton(onPressed: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ProfileMentor()),
  );}, child: Text("Continue Your Lessons",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
               SizedBox(height: 5,),
              ContainerProgress(color1: Color(0xff2EC4B6), color2: Color(0xffFFDAA8)),
              ContainerProgress2(color1: Color(0xff3333ff), color2: Color(0xffffaa80)),
              ContainerProgress(color1: Color(0xffe6b800), color2: Color(0xffffe680)),
              ContainerProgress(color1: Color(0xffff5c33), color2: Color(0xffffad99))
            ],
          ),
        ) ,
      ),
    );
  }
}