import 'package:app/screens/dashboard/dashboard_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(


        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("Selamat Datang!",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Color(0xff004A61)),),
             Center(
               child: Padding(
                 padding: const EdgeInsets.only(left: 70,top: 15),
                 child: Text("Masukan NISN dan password untuk memulai belajar sekarang",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:Color(0xff004A61)),),
               ),
             ),
             
           
            SizedBox(
              height: 20,
            ),
            Container(
              width: 330,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF0F0F0),
                    ),
                    child: const SizedBox(
                      width: 350,
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Icon(
                              Icons.person_outline,
                              color: Color(0xff909090),
                            ),
                          ),
                          hintText: "Your Email",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xff909090),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                 
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF0F0F0),
                        borderRadius: BorderRadius.circular(20)),
                    child: const SizedBox(
                      width: 350,
                      height: 45,
                      child: TextField(
                        obscureText: true,
                        //textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Icon(
                              Icons.lock_outline,
                              color: Color(0xff909090),
                            ),
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xff909090),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
      GestureDetector(
        child: Image.asset("assets/images/Botton.png"),
        onTap: (){
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const DashBoardMain()),
  );
        },
      )
      ])
      )
    );
  }
}