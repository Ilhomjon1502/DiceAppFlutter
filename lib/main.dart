import 'package:flutter/material.dart';
import 'dart:math';

//github link: https://github.com/londonappbrewery/Dicee-Flutter-Completed
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Dicee"),
      ),
      body: DiceeApp(),
    ),
  ));
}

//expanded - ekranga sig'may overflow bo'lib ketganda ishlatsak ekranga sig'dirib beradi
//StatelessWidget - ko'rinishni turgan holati o'zgarmasa ishlatamiz

// class DiceeApp extends StatelessWidget {
//
//   var leftImageNumber = 2;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: MaterialButton(
//               onPressed: (){
//                 print("left button click");
//               },
//               child: Image.asset("images/dice$leftImageNumber.png"),
//             ),
//           ),
//           Expanded(
//             child: MaterialButton(
//               onPressed: (){
//                 print("Right button click");
//               },
//               child: Image.asset("images/dice1.png"),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//StatefulWidget - ko'rinishda dinamik o'zgarish bo'lishi qiladigan bo'lsak ishlatamiz
class DiceeApp extends StatefulWidget {
  const DiceeApp({Key? key}) : super(key: key);

  @override
  State<DiceeApp> createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  int leftImageNumber = 2;
  int rightImageNumber = 1;

  void changeDice(){
    setState(() {
      leftImageNumber = Random().nextInt(6) + 1;
      rightImageNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: (){
                  changeDice();
                print("left button click");
              },
              child: Image.asset("images/dice$leftImageNumber.png"),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: (){
                // setState(() {
                //   changeDice();
                // });
                changeDice();
                print("Right button click");
              },
              child: Image.asset("images/dice$rightImageNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}

