// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class Detail extends StatefulWidget {
//   const Detail({super.key});

//   @override
//   State<Detail> createState() => _DetailState();
// }

// class _DetailState extends State<Detail> {
//   late VideoPlayerController _controller;
//   late Future _initializeVideoPlayerFuture;

//   @override
//   void initState() {
//     _controller = VideoPlayerController.network(
//       '',
//     );
//     _initializeVideoPlayerFuture = _controller.initialize();

//     _controller.setLooping(true);

//     super.initState();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: Column(
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Icon(Icons.arrow_back),
//                 SizedBox(
//                   width: 240,
//                 ),
//                 Icon(Icons.share),
//                 SizedBox(
//                   width: 25,
//                 ),
//                 Icon(Icons.shield_sharp),
//               ],
//             ),
//             FutureBuilder(
//               future: _initializeVideoPlayerFuture,
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.done) {
//                   return AspectRatio(
//                     aspectRatio: _controller.value.aspectRatio,
//                     child: VideoPlayer(_controller),
//                   );
//                 } else {
//                   return Center(child: CircularProgressIndicator());
//                 }
//               },
//             ),
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   // pause
//                   if (_controller.value.isPlaying) {
//                     _controller.pause();
//                   } else {
//                     // play
//                     _controller.play();
//                   }
//                 });
//               },
//               // icon
//               child: Icon(
//                 _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:app/screens/tab1.dart';
import 'package:app/screens/tab2.dart';
import 'package:app/screens/tab3.dart';
import 'package:flutter/material.dart';


class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: 240,
                  ),
                  Icon(Icons.share),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.shield_sharp),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/Rectangle 1048.png"),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Basic UI/UX Designer",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "4.8",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/Union.png"),
                  Image.asset("assets/Union.png"),
                  Image.asset("assets/Union.png"),
                  Image.asset("assets/Union.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "(534)",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(color: Color(0xffD5F3F0)),
                    child: Center(
                      child: Text(
                        "Basic UI/UX Designer",
                        style: TextStyle(
                          color: Colors.green,
                          //fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffD5F3F0),
                    child: Image.asset("assets/Subtract.png"),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "\$145",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Created by Azamat Baimatov",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.person),
                  Text(
                    "1203 Members",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Icon(Icons.circle_notifications),
                  Text(
                    "Certificate",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Icon(Icons.video_call),
                  Text(
                    "42 Lesson",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              TabBarView(children: [
                Tab1(),
                Tab2(),
                Tab3(),
              ])
            ],
          ),
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
                Tab(icon: Icon(Icons.camera_alt), text: "Tab 2"),
                Tab(icon: Icon(Icons.camera_alt), text: "Tab 3")
              ],
            ),
          ),
        ),
      ),
    );
  }
}