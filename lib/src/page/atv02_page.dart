import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Atv02Page extends StatefulWidget {
  const Atv02Page({Key? key}) : super(key: key);
  

  @override
  State<Atv02Page> createState() => _Atv02PageState();
}

class _Atv02PageState extends State<Atv02Page> {
  double widthRect = 60;
  double heightRect = 60;
  double verticalPosition = 20;
  double horizontalPosition =20;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
     verticalPosition =MediaQuery.of(context).size.height*0.92 - heightRect/2;
     horizontalPosition =MediaQuery.of(context).size.width *0.85 - widthRect/2;
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 20,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: Colors.blue,
                    size: 40,
                  )),
            ),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              top:verticalPosition,
              left: horizontalPosition,
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      verticalPosition = MediaQuery.of(context).size.height*0.20 - heightRect/2;
                      horizontalPosition =MediaQuery.of(context).size.width *0.5 - widthRect/2;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    width: widthRect,
                    height: heightRect,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
