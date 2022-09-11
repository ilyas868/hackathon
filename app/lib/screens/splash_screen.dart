import 'package:app/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
    
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
           
            Stack(
              children: [
                Positioned(
                  top: 20,
                  child: Image.asset("assets/images/aiLearn.png"),
                ),
                Container(
                    height: 496,
                    width: 411,
                    color: Color(0xff004A61),
                    child: Image.asset("assets/images/Frame.png")),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Perangkat Lunak Pengolah Gambar Vektor",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: Color(0xff004A61),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff004A61)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              child: Image.asset("assets/images/Botton.png"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
            )
          ],
        ),

        //         backgroundColor: Color(0xffFE2550),
        //         body: Stack(children: [
        //           Center(child: Image.asset("assets/images/logo.png")),

        //             Positioned(
        //               bottom: 1,
        //               right: 120,
        //               child: FlatButton(onPressed: (){

        //  Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => const Screen1()),
        //   );

        //               }, child: Image.asset("assets/images/Rectangle.png")))

        //         ]
        //     )
      ),
    );
  }
}
