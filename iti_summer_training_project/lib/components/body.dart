

// import 'package:flutter/material.dart';
// import 'package:iti_summer_training_project/components/custom_button.dart';
// import 'package:iti_summer_training_project/models/custom_button_model.dart';
// import 'package:iti_summer_training_project/screens/login/login_screen.dart';
// class Body extends StatefulWidget {
//   // const Body({ Key? key }) : super(key: key);

//   @override
//   _BodyState createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   //const color1 = Color(0xffd1d4ee);
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size; // total height and width of our screen
//     // var child;
//     return Container(
//       height: size.height,
//       width: double.infinity,
//       children: 
//         [Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // SizedBox(height: size.height * 0.02,),
//             SizedBox(height: size.height * 0.04,), //0.05
//             Text(
//               "Decor &",
//               style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40, ),
//             ),
//              Text(
//               " enjoy!",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
//             ),
            
//             SizedBox(height: size.height * 0.02,), //0.05
//             Image.asset("images/assets/icon-09.png", height: size.height* 0.47,), //0.47
//             SizedBox(height: size.height * 0.05,), //0.05

//             CustomButton(buttonModel: CustomButtonModel(text: "Get started", onButtonClick: (){
//               Navigator.pushNamed(context, '/login');
//             } ),
//             // CustomButton(text: "Get started", onButtonClick: (){
//             //   Navigator.pushNamed(context, '/login');
//             // }),
//             // Container(
//             //   // margin: EdgeInsets.symmetric(vertical: 50),
//             //   width: size.width * 0.5, //0.8
//             //   child: ClipRRect(
//             //     borderRadius: BorderRadius.circular(35),
//             //     child: RaisedButton( //flat button
//             //       //padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35), //20 40 // --> 15 35
//             //       padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0), //20 40 // --> 15 35
//             //       // padding:EdgeInsets.zero,
//             //       // color: Colors.blue,
//             //       onPressed: (){}, 
//             //       child: Container(
//             //         padding: EdgeInsets.symmetric(vertical: 16, horizontal: 59), // 16 72
//             //         // decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xff7c95d4), Color(0xffd1d4ee)])),
//             //         decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xff7c95d4), Color(0xffa7a5dd), Color(0xffa7a6db)])),
                    
//             //         // a2a2e0 9ca1d5 a7a5dd
//             //         child: Text(
//             //         "Get started",
//             //         style: TextStyle(color: Colors.white, fontSize: 18,),//18
//             //       ),
//             //       )
                  
//             //     ),
//             //   ),
            
//             // ),
            
//             // Text(
//             //   "Already have an account? ",
//             //   // child: Text("Sing in", style: TextStyle(fontWeight: FontWeight.bold)),
//             // )
//             SizedBox( height: size.height * 0.07,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text("Already have an account? ", style: TextStyle(fontSize: 16, fontFamily: "Metropolis-ExtraLight"),),
//                 Text("Sing in", style: TextStyle(fontWeight: FontWeight.bold))
//               ]
//             )
//           )],
//         ),
//       ],
//     );
//     // return Column(
//     //   children: <Widget>[
//     //     Expanded(
//     //       flex: 3,
//     //       child: Column(
//     //         children: <Widget>[
//     //           Text(
//     //             "Decor & enjoy!",
//     //             style: TextStyle(),
//     //           )
//     //         ],
//     //       )
        
//     //     )
//     //   ],
//     // );
//   }
// }