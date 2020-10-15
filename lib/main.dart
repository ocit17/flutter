import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sampleproject/main_page2.dart';
// import 'package:sampleproject/main_page.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:sampleproject/login_page.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

// 25.FLUTTER 24. Positioned, FloatingActionButton, LoginPage
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage2(),
    );
  }
}

// 24.FLUTTER 23. Opacity (Custom Card dengan Latar Bercorak)
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MainPage(),
//     );
//   }
// }

// 23.FLUTTER 22. InkWell (Membuat Sendiri Button Gradasi)
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Color(0xff0096ff), Color(0xff6610f2)],
//                     begin: FractionalOffset.topLeft,
//                     end: FractionalOffset.bottomRight,
//                   ),
//                   image: DecorationImage(
//                       image: AssetImage("images/itc.jpeg"),
//                       fit: BoxFit.contain)),
//             ),
//             // Icons.adb,
//             // color: Colors.purple,
//           ),
//           title: Text(
//             "IT Cileungsi Apps",
//             style: TextStyle(color: Colors.white),
//           ),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.settings),
//               onPressed: () {},
//               color: Colors.white,
//             ),
//             IconButton(
//               icon: Icon(Icons.exit_to_app),
//               onPressed: () {},
//               color: Colors.white,
//             ),
//           ],
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xff0096ff), Color(0xff6610f2)],
//                 begin: FractionalOffset.topLeft,
//                 end: FractionalOffset.bottomRight,
//               ),
//               // image: DecorationImage(
//               //     image: AssetImage("images/pattern.jpg"),
//               //     fit: BoxFit.none,
//               //     repeat: ImageRepeat.repeat)
//             ),
//           ),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               RaisedButton(
//                 onPressed: () {},
//                 color: Colors.amber,
//                 child: Text("Raides button"),
//                 shape: StadiumBorder(),
//               ),
//               Material(
//                 borderRadius: BorderRadius.circular(20),
//                 elevation: 2,
//                 child: Container(
//                   width: 150,
//                   height: 40,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       gradient: LinearGradient(
//                           colors: [Colors.purple, Colors.pink],
//                           begin: Alignment.topCenter,
//                           end: Alignment.bottomCenter)),
//                   child: Material(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.transparent,
//                     child: InkWell(
//                       splashColor: Colors.amber,
//                       borderRadius: BorderRadius.circular(20),
//                       onTap: () {},
//                       child: Center(
//                           child: Text(
//                         "My button",
//                         style: TextStyle(
//                             color: Colors.white, fontWeight: FontWeight.w600),
//                       )),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// 22.FLUTTER 21. MediaQuery
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MainPage(),
//     );
//   }
// }

// 21.FLUTTER 20. TextField (Decoration) - Tutorial Flutter - Belajar Flutter - Flutter Indonesia
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   TextEditingController controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Color(0xff0096ff), Color(0xff6610f2)],
//                     begin: FractionalOffset.topLeft,
//                     end: FractionalOffset.bottomRight,
//                   ),
//                   image: DecorationImage(
//                       image: AssetImage("images/itc.jpeg"),
//                       fit: BoxFit.contain)),
//             ),
//             // Icons.adb,
//             // color: Colors.purple,
//           ),
//           title: Text(
//             "IT Cileungsi Apps",
//             style: TextStyle(color: Colors.white),
//           ),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.settings),
//               onPressed: () {},
//               color: Colors.white,
//             ),
//             IconButton(
//               icon: Icon(Icons.exit_to_app),
//               onPressed: () {},
//               color: Colors.white,
//             ),
//           ],
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xff0096ff), Color(0xff6610f2)],
//                 begin: FractionalOffset.topLeft,
//                 end: FractionalOffset.bottomRight,
//               ),
//               // image: DecorationImage(
//               //     image: AssetImage("images/pattern.jpg"),
//               //     fit: BoxFit.none,
//               //     repeat: ImageRepeat.repeat)
//             ),
//           ),
//         ),
//         body: Container(
//           margin: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               TextField(
//                 decoration: InputDecoration(
//                   // icon: Icon(Icons.adb),
//                   prefixIcon: Icon(Icons.person),
//                   prefixText: "Name: ",
//                   prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
//                   // labelText: "Nama Lengkap",
//                   // hintText: "Masukan nama lengkap anda",
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
//                 ),
//                 maxLength: 5,
//                 onChanged: (value) {
//                   setState(() {});
//                 },
//                 controller: controller,
//               ),
//               Text(controller.text)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// 20.FLUTTER 19. TextField Widget
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   TextEditingController controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Color(0xff0096ff), Color(0xff6610f2)],
//                     begin: FractionalOffset.topLeft,
//                     end: FractionalOffset.bottomRight,
//                   ),
//                   image: DecorationImage(
//                       image: AssetImage("images/itc.jpeg"),
//                       fit: BoxFit.contain)),
//             ),
//             // Icons.adb,
//             // color: Colors.purple,
//           ),
//           title: Text(
//             "IT Cileungsi Apps",
//             style: TextStyle(color: Colors.white),
//           ),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.settings),
//               onPressed: () {},
//               color: Colors.white,
//             ),
//             IconButton(
//               icon: Icon(Icons.exit_to_app),
//               onPressed: () {},
//               color: Colors.white,
//             ),
//           ],
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xff0096ff), Color(0xff6610f2)],
//                 begin: FractionalOffset.topLeft,
//                 end: FractionalOffset.bottomRight,
//               ),
//               // image: DecorationImage(
//               //     image: AssetImage("images/pattern.jpg"),
//               //     fit: BoxFit.none,
//               //     repeat: ImageRepeat.repeat)
//             ),
//           ),
//         ),
//         body: Container(
//           margin: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               TextField(
//                 maxLength: 5,
//                 onChanged: (value) {
//                   setState(() {});
//                 },
//                 controller: controller,
//               ),
//               Text(controller.text)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// 19.FLUTTER 18. Card Widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.green,
//         body: Container(
//           margin: EdgeInsets.all(10),
//           child: ListView(
//             children: <Widget>[
//               buildCard(Icons.account_box, "Account Box"),
//               buildCard(Icons.adb, "Serangga Android"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Card buildCard(IconData iconData, String text) {
//   return Card(
//     elevation: 5,
//     child: Row(
//       children: <Widget>[
//         Container(margin: EdgeInsets.all(5), child: Icon(iconData)),
//         Text(text)
//       ],
//     ),
//   );
// }

// 18.FLUTTER 17. AppBar Gradasi dengan Corak (AppBar, IconButton, Icon)
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Color(0xff0096ff), Color(0xff6610f2)],
//                     begin: FractionalOffset.topLeft,
//                     end: FractionalOffset.bottomRight,
//                   ),
//                   image: DecorationImage(
//                     image: AssetImage("images/itc.jpeg"),
//                     fit: BoxFit.contain
//                   )),
//             ),
//             // Icons.adb,
//             // color: Colors.purple,
//           ),
//           title: Text(
//             "IT Cileungsi Apps",
//             style: TextStyle(color: Colors.white),
//           ),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.settings),
//               onPressed: () {},
//               color: Colors.white,
//             ),
//             IconButton(
//               icon: Icon(Icons.exit_to_app),
//               onPressed: () {},
//               color: Colors.white,
//             ),
//           ],
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Color(0xff0096ff), Color(0xff6610f2)],
//                   begin: FractionalOffset.topLeft,
//                   end: FractionalOffset.bottomRight,
//                 ),
//                 // image: DecorationImage(
//                 //     image: AssetImage("images/pattern.jpg"),
//                 //     fit: BoxFit.none,
//                 //     repeat: ImageRepeat.repeat)
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// 17.FLUTTER 16. Navigasi Multi Page_Screen
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage(),
//     );
//   }
// }

// 16.FLUTTER 15. Draggable, DragTarget, SizedBox, Material
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Color color1 = Colors.red;
//   Color color2 = Colors.amber;
//   Color tagetColor;
//   bool isAccepted = false;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan Dragable grad sizebox"),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Draggable<Color>(
//                   data: color1,
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color1,
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                   childWhenDragging: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: Colors.black26,
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                   feedback: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color1.withOpacity(0.5),
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                 ),
//                 Draggable<Color>(
//                   data: color2,
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color2,
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                   childWhenDragging: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: Colors.black26,
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                   feedback: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color2.withOpacity(0.5),
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             DragTarget<Color>(
//               onWillAccept: (value) => true,
//               onAccept: (value) {isAccepted = true; tagetColor = value;},
//               builder: (context, candidates, rejected){
//                 return (isAccepted) ? SizedBox(
//                     width: 100,
//                     height: 100,
//                     child: Material(
//                       color: tagetColor,
//                       shape: StadiumBorder(),
//                     ),
//                   ):
//                   SizedBox(
//                     width: 100,
//                     height: 100,
//                     child: Material(
//                       color: Colors.black26,
//                       shape: StadiumBorder(),
//                     ),
//                   );
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// 15.FLUTTER 14. Spacer Widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Space Widget"),),
//         body: Center(
//           child: Row(
//             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Spacer(flex: 1,),
//               Container(width: 80, height: 80, color: Colors.red,),
//               Spacer(flex: 2,),
//               Container(width: 80, height: 80, color: Colors.green,),
//               Spacer(flex: 3,),
//               Container(width: 80, height: 80, color: Colors.blue,),
//               Spacer(flex: 2,),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// 14.FLUTTER 13. Image Widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan Image Widget"),
//         ),
//         body: Center(
//           child: Container(
//             color: Colors.black,
//             width: 200,
//             height: 200,
//             padding: EdgeInsets.all(3),
//             child: Image(
//               image: AssetImage(
//                   "images/itc.jpeg"),
//                   fit: BoxFit.contain,
//                   // repeat: ImageRepeat.repeat,
//               // image: NetworkImage(
//               //     "https://i.pinimg.com/originals/61/b9/81/61b9811a9f2f2dc9f7064570bd78ab3d.jpg"),
//               //     fit: BoxFit.contain,
//               //     repeat: ImageRepeat.repeat,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// 13.FLUTTER 12. Stack & Align Widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan Stack & Align Widget"),
//         ),
//         body: Stack(
//           children: [
//             Column(
//               children: [
//                 Flexible(
//                   flex: 1,
//                   child: Row(
//                     children: [
//                       Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Colors.white,
//                           )),
//                       Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Colors.black12,
//                           )),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   flex: 1,
//                   child: Row(
//                     children: [
//                       Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Colors.black12,
//                           )),
//                       Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Colors.white,
//                           )),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             ListView(
//               children: [
//                 Column(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                           "Ini adalah text yang ada dilapisan tengah dari stack.",
//                           style: TextStyle(fontSize: 30)),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                           "Ini adalah text yang ada dilapisan tengah dari stack.",
//                           style: TextStyle(fontSize: 30)),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                           "Ini adalah text yang ada dilapisan tengah dari stack.",
//                           style: TextStyle(fontSize: 30)),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                           "Ini adalah text yang ada dilapisan tengah dari stack.",
//                           style: TextStyle(fontSize: 30)),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                           "Ini adalah text yang ada dilapisan tengah dari stack.",
//                           style: TextStyle(fontSize: 30)),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                           "Ini adalah text yang ada dilapisan tengah dari stack.",
//                           style: TextStyle(fontSize: 30)),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                           "Ini adalah text yang ada dilapisan tengah dari stack.",
//                           style: TextStyle(fontSize: 30)),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                           "Ini adalah text yang ada dilapisan tengah dari stack.",
//                           style: TextStyle(fontSize: 30)),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                           "Ini adalah text yang ada dilapisan tengah dari stack.",
//                           style: TextStyle(fontSize: 30)),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                           "Ini adalah text yang ada dilapisan tengah dari stack.",
//                           style: TextStyle(fontSize: 30)),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       child: Text(
//                           "Ini adalah text yang ada dilapisan tengah dari stack.",
//                           style: TextStyle(fontSize: 30)),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//             Align(
//                 alignment: Alignment(0.9, 0.9),
//                 child: RaisedButton(
//                   onPressed: () {},
//                   child: Text("My Button"),
//                   color: Colors.amber,
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }

// 12.FLUTTER 11. Flexible Widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flexible Layout"),
//         ),
//         body: Column(
//           children: [
//             Flexible(
//               flex: 1,
//               child: Row(
//                 children: [
//                   Flexible(
//                       flex: 1,
//                       child: Container(
//                         margin: EdgeInsets.all(5),
//                         color: Colors.red,
//                       )),
//                   Flexible(
//                       flex: 1,
//                       child: Container(
//                         margin: EdgeInsets.all(5),
//                         color: Colors.green,
//                       )),
//                   Flexible(
//                       flex: 1,
//                       child: Container(
//                         margin: EdgeInsets.all(5),
//                         color: Colors.purple,
//                       )),
//                 ],
//               ),
//             ),
//             Flexible(
//                 flex: 2,
//                 child: Container(
//                   margin: EdgeInsets.all(5),
//                   color: Colors.amber,
//                 )),
//             Flexible(
//                 flex: 1,
//                 child: Container(
//                   margin: EdgeInsets.all(5),
//                   color: Colors.blue,
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 11.FLUTTER 10. AnimatedContainer & GestureDetector
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Random random = Random();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan Animated Container"),
//         ),
//         body: Center(
//           child: GestureDetector(
//             onTap: () {
//               setState(() {});
//             },
//             child: AnimatedContainer(
//               duration: Duration(seconds: 1),
//               width: 50.0 + random.nextInt(101),
//               height: 50.0 + random.nextInt(101),
//               color: Color.fromARGB(255, random.nextInt(256),
//                   random.nextInt(256), random.nextInt(256)),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// 10.FLUTTER 08. TextStyle
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan Textstyle"),
//         ),
//         body: Center(
//           child: Text(
//             "Ini adalah Text",
//             style: TextStyle(fontFamily: "FORTE", fontSize: 50),
//           ),
//         ),
//       ),
//     );
//   }
// }

// 09.FLUTTER 09. List & ListView
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<Widget> widgets = [];
//   int counter = 1;

//   // Counstruct
//   // _MyAppState() {
//   //   for (var i = 0; i < 15; i++) {
//   //     widgets.add(Text(
//   //       "Data ke-" + i.toString(),
//   //       style: TextStyle(fontSize: 50),
//   //     ));
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan Listview"),
//         ),
//         body: ListView(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 RaisedButton(
//                     child: Text("Tambah Data"),
//                     onPressed: () {
//                       setState(() {
//                         widgets.add(Text("Data ke-" + counter.toString(),
//                             style: TextStyle(fontSize: 50)));
//                         counter++;
//                       });
//                     }),
//                 RaisedButton(child: Text("Hapus Data"), onPressed: (){
//                   setState(() {
//                     widgets.removeLast();
//                     counter--;
//                   });
//                 }),
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: widgets,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// 08.FLUTTER 07. Anonymous Method
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String message = "Ini adalah text";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Anonimous method"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(message),
//               RaisedButton(
//                 child: Text("Tekan saya"),
//                 // onPressed: tombolDitekan,
//                 onPressed: () {
//                   setState(() {
//                     message = "Tombol udah ditekan";
//                   });
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// 07.FLUTTER 06. Stateless & Stateful Widget
// class Myapp extends StatefulWidget {
//   @override
//   _MyappState createState() => _MyappState();
// }

// class _MyappState extends State<Myapp> {
//   int number = 0;
//   void tekanTombol() {
//     setState(() {
//       number = number + 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Stateful widget demo"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(number.toString(), style: TextStyle(fontSize: 10 + number.toDouble()),),
//               RaisedButton(
//                 child: Text("Tambah Bilangan"),
//                 onPressed: tekanTombol,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Episode 5 Container widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan Container"),
//         ),
//         body: Container(
//           color: Colors.deepOrangeAccent,
//           // margin: EdgeInsets.all(10),
//           margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
//           // padding: EdgeInsets.all(10),
//           padding: EdgeInsets.only(bottom: 20, top: 20),
//           child: Container(
//             margin: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 gradient: LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: <Color>[
//                       Colors.amber,
//                       Colors.blue,
//                     ])),
//             // color: Colors.blue,
//             // margin: EdgeInsets.all(10),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Episode 4 latihan column dan row
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan row dan column"),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text("Text 1"),
//             Text("Text 2"),
//             Text("Text 3"),
//             Row(
//               children: <Widget>[
//                 Text("Text 4"),
//                 Text("Text 5"),
//                 Text("Text 6"),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
