import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
      MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.tealAccent,
          appBar: AppBar(
            title: Center(child: Text('Nice')),
            backgroundColor: Colors.black87,
          ),
          body: niceApp(),
        ) ,
      )
  );
}
class niceApp extends StatefulWidget {
  const niceApp({super.key});

  @override
  State<niceApp> createState() => _niceAppState();
}

class _niceAppState extends State<niceApp> {
  var changePic=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(onPressed: () {
            setState(() {
              changepic();
            });
          },
              child: Image.asset('images/ball$changePic.png'))),
        ],
      ),
    );
  }
  changepic(){
    changePic=Random().nextInt(5)+1;

  }
}



