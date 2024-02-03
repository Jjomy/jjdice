import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     int ldice=2,rdice=3;
//     return Center(
//       child: Row(children: <Widget>[
//         Expanded(
//           child: TextButton(
//               onPressed: () {
//                 print('Left Button Pressed');
//               },
//               child: Image.asset('images/dice${ldice+1}.png')),
//         ),
//         Expanded(
//           child: TextButton(
//               onPressed: () {
//                 print('Right Button Pressed');rdice=rdice+1;
//               },
//               child: Image.asset('images/dice$rdice.png')),
//         ),
//       ]),
//     );
//   }
// }

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldice = 1, rdice = 1;
  void changeDiceFace(){
    setState(() {
      rdice = Random().nextInt(6) + 1;
      ldice = 7-rdice;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: TextButton(
              onPressed: () {changeDiceFace();

              },
              child: Image.asset('images/dice$ldice.png')),
        ),
        Expanded(
          child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$rdice.png')),
        ),
      ]),
    );
  }
}
